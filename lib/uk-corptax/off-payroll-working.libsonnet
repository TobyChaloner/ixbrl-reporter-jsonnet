// off-payroll-working
// IR35 tax page

/*
import via

base + {
    components:: {
	"off-payroll-working"(c)::
	    local obj = import "uk-corptax/off-payroll-working.libsonnet";
	    obj.element(c),
*/

{
    element(c):: {
	"kind": "page",
	"elements": [
	    {
		"kind": "facttable",
		"title": "Off Payroll Working",
		"facts": [

		    {
			"id": "off-payroll-working-applicable",
			"description": "Off Payroll Working Applicable",
			"field": "-",
			"context": "report-period",
			"kind": "config-bool",
			"key": "metadata.tax.off-payroll-working-applicable"
		    },



//tax-nic-deductions-off-payroll-working
//PAYE and employee NI deductions
		    {
			"id": "tax-nic-deductions-off-payroll-working",
			"kind": "computation",
			"description": "Tax & NIC Deductions Off Payroll Working",
			"field": "-",
			"context": "report-period",
			"computation": "tax-nic-deductions-off-payroll-working",
			"period-config": "metadata.tax.period"
		    },


//gross-turnover-off-payroll-working",
		    {
			"id": "gross-turnover-off-payroll-working",
			"kind": "computation",
			"description": "Gross Turnover Off Payroll Working",
			"field": "-",
			"context": "report-period",
			"computation": "gross-turnover-off-payroll-working",
			"period-config": "metadata.tax.period"
		    },


//net-turnover-off-payroll-working
// This is the sum of gross-turnover less tax-nic-deductions

		]
	    }
	]
    }
}
