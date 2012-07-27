{if $availableContentLanguages|count}
	<dl{if $errorField == 'languageID'} class="formError"{/if}>
		<dt>{lang}wcf.message.language{/lang}</dt>
		<dd id="languageIDContainer">
			<noscript>
				<select name="languageID" id="languageID">
					{foreach from=$availableContentLanguages item=contentLanguage}
						<option value="{@$contentLanguage->languageID}">{$contentLanguage}</option>
					{/foreach}
				</select>
			</noscript>
		</dd>
	</dl>
	
	<script type="text/javascript">
		//<![CDATA[
		$(function() {
			var $languages = {
				{implode from=$availableContentLanguages item=contentLanguage}
					'{@$contentLanguage->languageID}': {
						iconPath: '{@$contentLanguage->getIconPath()}',
						languageName: '{$contentLanguage}'
					}
				{/implode}
			};
			
			new WCF.Language.Chooser('languageIDContainer', 'languageID', {$languageID}, $languages);
		});
		//]]>
	</script>
{/if}