---
tags:
  - tech/windows/solutions
  - tech/windows/intune
---
# Windows update for business - Query endpoint alerts

let _SnapshotTime = datetime(2024-07-31T01:00:00Z);
let DeviceAlert = UCDeviceAlert
    | where TimeGenerated == _SnapshotTime
    | where AlertStatus == "Active";
let UpdateAlert = UCUpdateAlert
    | where TimeGenerated == _SnapshotTime
    | where AlertStatus == "Active";
DeviceAlert
| union (UpdateAlert)
//| summarize Alerts=count() by AlertSubtype, AlertType, AlertClassification
//| sort by Alerts desc
//| take 3
//| project-reorder AlertSubtype, AlertType, AlertClassification, Alerts

>!note clicar em export e exportar todas as colunas para arquivo CSV
>




Tarefas agendadas que não são executadas. 
Não consegue consultar saldo de horas.
Não consegue consultar ponto do dia anterior.



