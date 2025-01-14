<%--
/**
 * Copyright (c) 2000-present Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */
--%>

<%@ include file="/init.jsp" %>

<%
AnalyticsConfiguration analyticsConfiguration = (AnalyticsConfiguration)request.getAttribute(AnalyticsSettingsWebKeys.ANALYTICS_CONFIGURATION);
%>

<portlet:actionURL name="/analytics/edit_workspace_connection" var="editWorkspaceConnectionURL" />

<div class="sheet sheet-lg">
	<h2 class="autofit-row">
		<span class="autofit-col autofit-col-expand">
			<liferay-ui:message key="workspace-connection" />
		</span>
	</h2>

	<aui:form action="<%= editWorkspaceConnectionURL %>" data-senna-off="true" method="post" name="fm">
		<aui:input name="redirect" type="hidden" value="<%= currentURL %>" />

		<aui:fieldset>
			<aui:input label="analytics-cloud-token" name="token" placeholder="paste-token-here" value='<%= (analyticsConfiguration != null) ? analyticsConfiguration.token() : "" %>' />

			<div class="form-text">
				<liferay-ui:message key="analytics-cloud-token-help" />
			</span>

			<aui:button-row>
				<aui:button type="submit" value="connect" />
			</aui:button-row>
		</aui:fieldset>
	</aui:form>
</div>