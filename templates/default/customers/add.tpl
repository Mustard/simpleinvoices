{*
* Script: add.tpl
* 	 Customers add template
*
* Last edited:
* 	 2008-08-25
*
* License:
*	 GPL v3 or above
*}

{* if customer is updated or saved.*} 

{if $smarty.post.name != "" && $smarty.post.customer != null } 
	{include file="../templates/default/customers/save.tpl"}

{else}
{* if  name was inserted *} 
	{if $smarty.post.customer !=null} 
		<div class="validation_alert"><img src="./images/common/important.png"</img>
		You must enter a Customer name</div>
		<hr />
	{/if}
<form name="frmpost" ACTION="index.php?module=customers&view=add" METHOD="post"><h3>{$LANG.customer_add}</h3>
<hr />
<table align=center>
	<tr>
		<td class="details_screen">{$LANG.customer_name}
		<a 
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=required_field"
				title="{$LANG.Required_Field}"
		>
		<img src="./images/common/required-small.png"></img></a></td>
		<td><input type=text name="name" value="{$smarty.post.name}" size=25></td>
	</tr>
	</tr>
	<td class="details_screen">{$LANG.customer_contact}
		<a
			rel="docs.php?t=help&p=customer_contact"
			href="#"
			class="cluetip"
			title="{$LANG.customer_contact}"
		>
			<img
				src="./images/common/help-small.png"
			></img>
		</a>
	</td>
	<td><input type=text name="attention" size=25 value="{$smarty.post.attention}"></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street}</td>
		<td><input type=text name="street_address" value="{$smarty.post.street_address}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.street2}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=street2"
				title="{$LANG.street2}"
			> 
				<img
					src="./images/common/help-small.png"
				>
				</img>
			</a>
		</td>
		<td><input type=text name="street_address2" value="{$smarty.post.street_address2}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.city}</td>
		<td><input type=text name="city" value="{$smarty.post.city}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.state}</td>
		<td><input type=text name="state" value="{$smarty.post.state}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.zip}</td>
		<td><input type=text name="zip_code" value="{$smarty.post.zip_code}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.country}</td>
		<td><input type=text name="country" value="{$smarty.post.country}" size=50></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.phone}</td>
		<td><input type=text name="phone" value="{$smarty.post.phone}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.mobile_phone}</td>
		<td><input type=text name="mobile_phone" value="{$smarty.post.mobile_phone}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.fax}</td>
		<td><input type=text name="fax" value="{$smarty.post.fax}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.email}</td>
		<td><input type=text name="email" value="{$smarty.post.email}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf1}
 			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> <img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="custom_field1" value="{$smarty.post.custom_field1}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf2}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> 
				<img
					src="./images/common/help-small.png">
				</img>
			</a>
		</td>
		<td><input type=text name="custom_field2" value="{$smarty.post.custom_field2}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf3}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> 
		<img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="custom_field3" value="{$smarty.post.custom_field3}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$customFieldLabel.customer_cf4}
			<a
				class="cluetip"
				href="#"
				rel="docs.php?t=help&p=custom_fields"
				title="{$LANG.Custom_Fields}"
			> 
		<img
			src="./images/common/help-small.png"></img></a></td>
		<td><input type=text name="custom_field4" value="{$smarty.post.custom_field4}" size=25></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.notes}</td>
		<td><textarea  name='notes' class="editor" rows=8 cols=50>{$smarty.post.notes|unescape}</textarea></td>
	</tr>
	<tr>
		<td class="details_screen">{$LANG.enabled}</td>
		<td>
			{html_options name=enabled options=$enabled selected=1}
		</td>
	</tr>
	
	{showCustomFields categorieId="2"}

</table>
<hr />
<div style="text-align:center;">
	<input type="submit" name="customer" value="{$LANG.insert_customer}">
	<input type="hidden" name="op" value="insert_customer">
</div>
</form>
{/if}
