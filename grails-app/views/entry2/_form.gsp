<%@ page import="blogito.Entry" %>



<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="entry.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${entryInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'summary', 'error')} required">
	<label for="summary">
		<g:message code="entry.summary.label" default="Summary" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="summary" cols="40" rows="5" maxlength="1000" required="" value="${entryInstance?.summary}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'filename', 'error')} ">
	<label for="filename">
		<g:message code="entry.filename.label" default="Filename" />
		
	</label>
	<g:textField name="filename" value="${entryInstance?.filename}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="entry.author.label" default="Author" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="author" name="author.id" from="${blogito.User.list()}" optionKey="id" required="" value="${entryInstance?.author?.id}" class="many-to-one"/>

</div>

