{include file="inc/header.tpl"}

<h2>{$LANG.license}</h2>

<p {if !empty($failure)}class="error"{/if}>{$LANG.license_desc}</p>

<p>
    <iframe src="{$smarty.const.PH7_URL_INSTALL}langs/{$current_lang}/license.html">{$LANG.need_frame}</iframe>
</p>

<form method="post" action="{$smarty.const.PH7_URL_SLUG_INSTALL}license">
    <p>
        <input type="checkbox" name="license_agreed" id="license_agreed" onclick="checkAgreementStatus()"/>
        <label for="license_agreed">{$LANG.agree_license}</label>
    </p>

    <p>
        <input type="checkbox" name="conform_laws_agreed" id="conform_laws_agreed" onclick="checkAgreementStatus()"/> {$LANG.conform_to_laws}
    </p>

    <p>
        <input type="checkbox" name="responsibilities_agreed" id="responsibilities_agreed" onclick="checkAgreementStatus()"/> {$LANG.responsibilities_agreement}
    </p>

    <p>
        <button type="submit" name="license_submit" id="next_btn" value="1" disabled="disabled"
            class="btn btn-primary btn-lg">{$LANG.next}</button>
    </p>
</form>

{literal}
    <script>
        function checkAgreementStatus() {
            document.getElementById('next_btn').disabled =
                document.getElementById('license_agreed').checked &&
                document.getElementById('conform_laws_agreed').checked &&
                document.getElementById('responsibilities_agreed').checked
            ? false : true;
        }
    </script>
{/literal}

{include file="inc/footer.tpl"}
