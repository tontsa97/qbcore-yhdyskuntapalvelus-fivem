-- coding: UTF-8
local Translations = {
    error = {
        nopolice = 'Vain poliiseille!',
        started = 'Aloitit palvelutehtavasi. Sinun on tehtava %{value} tehtavaa..',
        todo = '%{value} tehtavaa jaljella..',
        no = 'HEI! Se ei ole hyva, sinun on tehtava viela %{value}.',
        canceled = 'Keskeytetty'
    },
    success = {
        taskdone = 'Olet suorittanut kaikki tehtavasi.'
    },
    info = {
        deliverbox = 'Toimita laatikko',
    },
    command = {
        fillallfield = 'Tayta kaikki argumentit',
        filltaskamount = 'Kuinka monta kertaa hanen on tehtava tehtava?',
        service = 'Anna pelaajalle palvelutehtava',
        id = 'ID',
        task = 'Tehtava',
        amount = 'Kuinka paljon hanen pitaa tehda?'
    },
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
