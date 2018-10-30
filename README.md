# Python container role

This role sets up a container for a Python application talking WSGI.

Initial version uses uWSGI.

Parameters:

<dl>
<dt>pycont_user</dt>
	<dd>System user the application should run as. Currently applications
        run under the default web group (www-data in Ubuntu)</dd>
<dt>pycont_name</dt>
        <dd>Name of the application. In practice this is the directory where the
	containers expects to find the application root.</dd>
<dt>pycont_app_name</dt>
        <dd>Directory under "pycont_name", where the wsgi.py is installed</dd>
<dt>pycont_url_prefix</dt>
        <dd>URL-prefix that is stripped from the PATH_INFO passed to
	application. This allows the application to be installed in
	not-root.</dd>
<dt>pycont_contract_port</dt>
        <dd>Port that uwsgi will listen on. "Contract" is from (kind of) 12-factor.
        Exclusive with "pycont_contract_socket"</dd>
<dt>pycont_contract_socket</dt>
        <dd>Socket that uwsgi will listen on.
        Exclusive with "pycont_contract_port"</dd>
</dl>