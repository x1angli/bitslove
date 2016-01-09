# -*- coding: utf-8 -*-

from django.http import QueryDict
from django.utils.datastructures import MultiValueDict


class RestMiddleware:

    def process_request(self, request):
        """
        拦截所有request进入, 并把url参数和body里面的参数封装到request.DATA.
        """

        # 封装request.DATA
        request.DATA = QueryDict('')
        if request.META.get('CONTENT_TYPE', '').startswith('multipart'):
            request.DATA, request._files = request.parse_file_upload(request.META, request)
        else:
            body = request.body.decode()  # body为key-value的二进制str
            request.DATA, request._files = QueryDict(body), MultiValueDict()
        if not request.DATA.dict() and request.method == 'GET':
            request.DATA = request.GET
