
<table class="table table-striped">
	<thead>
		<tr>
			<th>VEN Name</th>
			<th>VEN ID</th>
			<th>Client URI</th>
			<th>Program</th>
		</tr>
	</thead>
	<tfoot>
	</tfoot>
	<tbody>
		<g:each var="ven" in="${venList}">
			<tr>
				<td>
					${ven.name}
				</td>
				<td>
					${ven.venID}
				</td>
				<td>
					${ven.clientURI}
				</td>
				<td>
					${ven.programs}
				</td>
				<td><g:form controller="Ven" action="deleteVEN" params="[id : ven.id]">
						<input type="submit" value="Delete" class="btn btn-mini btn-danger"
							onClick="return confirmSubmit()">
					</g:form></td>
				<td><g:form controller="Ven" action="editVEN"
						params="[id : ven.id]">
						<input type="submit" value="Edit" class="btn btn-mini"
							onClick="return confirmSubmit()">
					</g:form></td>
			</tr>
		</g:each>
	</tbody>
</table>