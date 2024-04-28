-- koodaus: UTF-8
local Translations = {
    error = {
        nopolice = 'Vain poliiseille!',
        started = 'Aloitit palvelutehtäväsi. Sinun on tehtävä %{value} tehtävää..',
        todo = '%{value} tehtävää jäljellä..',
        no = 'HEI! Se ei ole hyv�, sinun on tehtävä vielä %{value}.',
        canceled = 'Keskeytetty'
    },
    success = {
        taskdone = 'Olet suorittanut kaikki tehtäväsi.'
    },
    info = {
        deliverbox = 'Toimita laatikko',
    },
    command = {
        fillallfield = 'Täytä kaikki argumentit',
        filltaskamount = 'Kuinka monta kertaa hänen on tehtävä tehtävä?',
        service = 'Anna pelaajalle palvelutehtävä',
        id = 'ID',
        task = 'Tehtävä',
        amount = 'Kuinka paljon h�nen pit�� tehdä?'
    },
}

if GetConvar('qb_locale', 'en') == 'fi' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
