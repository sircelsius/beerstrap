<%@ page import="com.app.admin.domain.repository.DocumentCategory" %>
<div class="btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
        <i class="fa fa-filter"></i> <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">

        <li class="dropdown-header"><g:message code="app.default.filters.category.label" /></li>
        <li class="${(params.category == null || params.category == '')?('active'):('')}">
            <g:link action="list" params="${params + [category:'']}" title="${message(code:'app.default.filters.category.allCategories.label')}">
                <i class="fa fa-group"></i>
                <g:message code="app.default.filters.category.allCategories.label" />
            </g:link>
        </li>
        <g:each in="${DocumentCategory.list()}" var="category">
            <li class="${(params.category == category.toString())?('active'):('')}">
                <g:link action="list" params="[category: category.toString()]" title="${category.toString()}">
                    <i class="fa fa-group"></i>
                    ${category.toString()}
                </g:link>
            </li>
        </g:each>

        <li class="dropdown-header"><g:message code="app.default.filters.dateCreated.label" /></li>
        <li class="${(params.dateCreated == '' || params.dateCreated == null)?('active'):('')}">
            <g:link action="list" params="${params + [dateCreated: '']}" title="${message(code:'app.default.filters.date.allTime.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.allTime.label" />
            </g:link>
        </li>
        <li class="${(params.dateCreated == "1")?('active'):('')}">
            <g:link action="list" params="${params + [dateCreated: 1]}" title="${message(code:'app.default.filters.date.today.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.today.label" />
            </g:link>
        </li>
        <li class="${(params.dateCreated == "7")?('active'):('')}">
            <g:link action="list" params="${params + [dateCreated: 7]}" title="${message(code:'app.default.filters.date.lastWeek.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.lastWeek.label" />
            </g:link>
        </li>
        <li class="${(params.dateCreated == "30")?('active'):('')}">
            <g:link action="list" params="${params + [dateCreated: 30]}" title="${message(code:'app.default.filters.date.lastMonth.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.lastMonth.label" />
            </g:link>
        </li>

        <li class="dropdown-header"><g:message code="app.default.filters.lastUpdated.label" /></li>
        <li class="${(params.lastUpdated == '' || params.lastUpdated == null)?('active'):('')}">
            <g:link action="list" params="${params + [lastUpdated: '']}" title="${message(code:'app.default.filters.date.allTime.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.allTime.label" />
            </g:link>
        </li>
        <li class="${(params.lastUpdated == "30")?('active'):('')}">
            <g:link action="list" params="${params + [lastUpdated: 30]}" title="${message(code:'app.default.filters.date.lastMonth.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.lastMonth.label" />
            </g:link>
        </li>
        <li class="${(params.lastUpdated == "7")?('active'):('')}">
            <g:link action="list" params="${params + [lastUpdated: 7]}" title="${message(code:'app.default.filters.date.lastWeek.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.lastWeek.label" />
            </g:link>
        </li>
        <li class="${(params.lastUpdated == "1")?('active'):('')}">
            <g:link action="list" params="${params + [lastUpdated: 1]}" title="${message(code:'app.default.filters.date.today.label')}">
                <i class="fa fa-clock-o"></i>
                <g:message code="app.default.filters.date.today.label" />
            </g:link>
        </li>
    </ul>
</div>