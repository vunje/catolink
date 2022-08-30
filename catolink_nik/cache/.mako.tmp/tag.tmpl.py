# -*- coding:utf-8 -*-
from mako import runtime, filters, cache
UNDEFINED = runtime.UNDEFINED
STOP_RENDERING = runtime.STOP_RENDERING
__M_dict_builtin = dict
__M_locals_builtin = locals
_magic_number = 10
_modified_time = 1661820902.5468838
_enable_loop = True
_template_filename = 'themes/yesplease/templates/tag.tmpl'
_template_uri = 'tag.tmpl'
_source_encoding = 'utf-8'
_exports = ['page_title', 'subtitle']


def _mako_get_namespace(context, name):
    try:
        return context.namespaces[(__name__, name)]
    except KeyError:
        _mako_generate_namespaces(context)
        return context.namespaces[(__name__, name)]
def _mako_generate_namespaces(context):
    pass
def _mako_inherit(template, context):
    _mako_generate_namespaces(context)
    return runtime._inherit_from(context, '/index.tmpl', _template_uri)
def render_body(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        __M_locals = __M_dict_builtin(pageargs=pageargs)
        def page_title():
            return render_page_title(context._locals(__M_locals))
        def subtitle():
            return render_subtitle(context._locals(__M_locals))
        description = context.get('description', UNDEFINED)
        title = context.get('title', UNDEFINED)
        __M_writer = context.writer()
        __M_writer('\n\n')
        __M_writer('\n\n')
        if 'parent' not in context._data or not hasattr(context._data['parent'], 'page_title'):
            context['self'].page_title(**pageargs)
        

        __M_writer('\n')
        if 'parent' not in context._data or not hasattr(context._data['parent'], 'subtitle'):
            context['self'].subtitle(**pageargs)
        

        return ''
    finally:
        context.caller_stack._pop_frame()


def render_page_title(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        def page_title():
            return render_page_title(context)
        title = context.get('title', UNDEFINED)
        __M_writer = context.writer()
        __M_writer(str(title))
        return ''
    finally:
        context.caller_stack._pop_frame()


def render_subtitle(context,**pageargs):
    __M_caller = context.caller_stack._push_frame()
    try:
        def subtitle():
            return render_subtitle(context)
        description = context.get('description', UNDEFINED)
        __M_writer = context.writer()
        __M_writer('\n')
        if description:
            __M_writer('    ')
            __M_writer(str(description))
            __M_writer('\n')
        return ''
    finally:
        context.caller_stack._pop_frame()


"""
__M_BEGIN_METADATA
{"filename": "themes/yesplease/templates/tag.tmpl", "uri": "tag.tmpl", "source_encoding": "utf-8", "line_map": {"27": 0, "38": 3, "39": 5, "44": 7, "54": 7, "61": 7, "67": 8, "74": 8, "75": 9, "76": 10, "77": 10, "78": 10, "84": 78}}
__M_END_METADATA
"""
