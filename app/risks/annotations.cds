using RiskService as service from '../../srv/risk-service';

annotate service.Risks with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Description',
            Value : descr,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Owner',
            Value : owner,
        },
        {
            $Type : 'UI.DataField',
            Value : miti.descr,
            Label : 'Mitigation description',
        },
        {
            $Type : 'UI.DataField',
            Label : 'Impact',
            Value : impact,
            Criticality : criticality,
        },
        {
            $Type : 'UI.DataField',
            Value : miti.risks.prio.descr,
        },
        {
            $Type : 'UI.DataField',
            Value : prio_code,
            Label : 'prio_code',
            Criticality : PrioCriticality,
        },
        {
            $Type : 'UI.DataField',
            Value : bp.FullName,
            Label : 'FullName',
        },
    ]
);
annotate service.Risks with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'owner',
                Value : owner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'descr',
                Value : descr,
            },
            {
                $Type : 'UI.DataField',
                Label : 'impact',
                Value : impact,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Risk-Section',
            ID : 'RiskSection',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Risk',
                    ID : 'Risk',
                    Target : '@UI.FieldGroup#Risk',
                },],
        },
        {
            $Type : 'UI.CollectionFacet',
            Label : 'Mitigation overview',
            ID : 'Mitigationoverview',
            Facets : [
                {
                    $Type : 'UI.ReferenceFacet',
                    Label : 'Mitigation',
                    ID : 'Mitigation',
                    Target : '@UI.FieldGroup#Mitigation',
                },],
        },]
);
annotate service.Risks with @(
    UI.FieldGroup #Risk : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : owner,
                Label : 'Owner',
            },
            {
                $Type : 'UI.DataField',
                Value : title,
                Label : 'Title',
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : descr,
                Label : 'Description',
            },{
                $Type : 'UI.DataField',
                Value : createdBy,
            },{
                $Type : 'UI.DataField',
                Value : createdAt,
            },{
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },{
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
            {
                $Type : 'UI.DataField',
                Value : impact,
                Label : 'Impact',
                Criticality : criticality,
            },
            {
                $Type : 'UI.DataField',
                Value : prio_code,
                Label : 'prio_code',
                Criticality : PrioCriticality,
            },],
    }
);
annotate service.Risks with @(
    UI.HeaderInfo : {
        TypeName : 'Risk',
        TypeNamePlural : 'Risks',
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : descr,
        },
    }
);
annotate service.Risks with @(
    UI.FieldGroup #Mitigation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : miti_ID,
                Label : 'Descrpition',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.owner,
                Label : 'Owner',
            },
            {
                $Type : 'UI.DataField',
                Value : miti.modifiedAt,
            },{
                $Type : 'UI.DataField',
                Value : miti.createdBy,
            },],
    }
);
annotate service.Risks with {
    miti @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Mitigations',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : miti_ID,
                    ValueListProperty : 'ID',
                },
            ],
            Label : 'Mitigation',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Mitigations with {
    ID @Common.Text : descr
};
annotate service.Mitigations with {
    owner @Common.FieldControl : #ReadOnly
};
annotate service.Mitigations with {
    descr @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Mitigations',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : descr,
                    ValueListProperty : 'descr',
                },
            ],
            Label : 'Mitagation Description',
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Risks with {
    miti @Common.Text : descr
};
