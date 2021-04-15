//
//  jsonTestFile.swift
//  PD Rebalance
//
//  Created by George Breen on 4/6/21.
//

import Foundation

//
//


let jsonTestData = """
 [
  {
  "rank": 1,
  "groupPriority": "Gold",
  "name": "API RBAC (Regions) - commit date June 30.",
  "value": "$",
  "size": 11,
  "duration": 18,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-07-05T04:00:00.000Z",
  "dueDate": "2021-06-30T04:00:00.000Z",
  "afweeks": 1,
  "opsweeks": 2,
  "csweeks": 8
  },
  {
  "rank": 2,
  "groupPriority": "Gold",
  "name": "Scale Phase 3  - Scale to 100M calls/month.  tied to UK deployment. must be done by July. Michael may be able to delay this by 1/2 months if needed. (additional work outside of S6 team)  - no hard due dates yet",
  "value": "$",
  "size": 16,
  "duration": 17,
  "contractorDuration": 0,
  "startDate": "2021-01-11T05:00:00.000Z",
  "completeDate": "2021-05-10T04:00:00.000Z",
  "dueDate": "2021-07-15T04:00:00.000Z",
  "inProgress": "Yes",
  "aaweeks": 4,
  "tsweeks": 6,
  "systestweeks": 6
  },
  {
  "rank": 3,
  "groupPriority": "Gold",
  "name": "TFLite Stateless Extraction - Alex - consolidating platforms.  (Required for Svar3 + UK lunch)",
  "value": "E",
  "size": 12,
  "duration": 12,
  "contractorDuration": 0,
  "startDate": "2021-04-05T04:00:00.000Z",
  "completeDate": "2021-06-28T04:00:00.000Z",
  "dueDate": "2021-06-30T04:00:00.000Z",
  "aaweeks": 12
  },
  {
  "rank": 4,
  "groupPriority": "Gold",
  "name": "SVAR3 for Pano - Amit (TFLite pipeline a pre-requisit for this)",
  "value": "E",
  "size": 8,
  "duration": 8,
  "contractorDuration": 0,
  "startDate": "2021-08-23T04:00:00.000Z",
  "completeDate": "2021-10-18T04:00:00.000Z",
  "dueDate": "2021-07-30T04:00:00.000Z",
  "aaweeks": 8
  },
  {
  "rank": 5,
  "groupPriority": "Gold",
  "name": "Genesys PCC Streaming API (Associated) - signed deal, must do by June (or so, no committed date) - at risk based on effort estimate, if needed in June",
  "value": "$",
  "size": 18,
  "duration": 18,
  "contractorDuration": 6,
  "startDate": "2021-04-05T04:00:00.000Z",
  "completeDate": "2021-08-09T04:00:00.000Z",
  "dueDate": "2021-07-30T04:00:00.000Z",
  "tsweeks": 16,
  "systestweeks": 2,
  "extweeks": 18
  },
  {
  "rank": 6,
  "groupPriority": "Gold",
  "name": "Prem to cloud migration tooling - automation for customer instead of manual migration",
  "value": "P",
  "size": 2,
  "duration": 2,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-03-31T04:00:00.000Z",
  "dueDate": "2021-03-31T04:00:00.000Z",
  "inProgress": "Yes",
  "afweeks": 2,
  "churnTt": "x"
  },
  {
  "rank": 7,
  "groupPriority": "Gold",
  "name": "Speaker Attributes Service for OTT - Amit - Roku ask for age/gender/etc.  Deadline end of March/early April.  Rich says v1 should be done in MArch.  Risk no tester now.  ",
  "value": "C",
  "size": 4,
  "duration": 4,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-03-31T04:00:00.000Z",
  "dueDate": "2021-03-31T04:00:00.000Z",
  "inProgress": "Yes",
  "iotweeks": 4
  },
  {
  "rank": 8,
  "groupPriority": "Gold",
  "name": "SAFE: Python 2 to 3 Migration - on prem only - dev complete, bug fixes to address",
  "value": "E",
  "size": 3,
  "duration": 4,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-04-15T04:00:00.000Z",
  "dueDate": "2021-04-15T04:00:00.000Z",
  "inProgress": "Yes",
  "aaweeks": 2,
  "systestweeks": 1
  },
  {
  "rank": 9,
  "groupPriority": "Gold",
  "name": "Python 2 to 3 and Python 3 CVE - all",
  "value": "R",
  "size": 84,
  "duration": 80,
  "contractorDuration": 26,
  "startDate": "2021-05-03T04:00:00.000Z",
  "completeDate": "2022-11-14T05:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "aaweeks": 16,
  "afweeks": 16,
  "daweeks": 32,
  "tsweeks": 12,
  "systestweeks": 8,
  "extweeks": 84
  },
  {
  "rank": 10,
  "groupPriority": "Gold",
  "name": "Prem Accessibility (RBC) - committed to them to finish by December 4, they signed/accepted. Michael notes, need to keep them happy",
  "value": "$",
  "size": 32,
  "duration": 28,
  "contractorDuration": 11,
  "startDate": "2021-04-05T04:00:00.000Z",
  "completeDate": "2021-10-18T04:00:00.000Z",
  "dueDate": "2021-12-04T05:00:00.000Z",
  "afweeks": 32,
  "extweeks": 32
  },
  {
  "groupPriority": "Gold",
  "name": "Improving AToM Stability and Monitoring - Completed",
  "value": "C",
  "size": 2,
  "duration": 2,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-03-31T04:00:00.000Z",
  "aaweeks": 2
  },
  {
  "rank": 11,
  "groupPriority": "Gold",
  "name": "RedHat OS Patching - PD-15323 - needs significant regression testing",
  "value": "R",
  "size": 16,
  "duration": 16,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-05-31T04:00:00.000Z",
  "dueDate": "2021-05-31T04:00:00.000Z",
  "inProgress": "Yes",
  "systestweeks": 4,
  "opsweeks": 12
  },
  {
  "rank": 12,
  "groupPriority": "Gold",
  "name": "Mitigate high query count from the UI (PMR) - caused two outages",
  "value": "R",
  "size": 4,
  "duration": 4,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-04-09T04:00:00.000Z",
  "dueDate": "2021-04-09T04:00:00.000Z",
  "inProgress": "Yes",
  "afweeks": 3,
  "systestweeks": 1
  },
  {
  "rank": 13,
  "groupPriority": "Gold",
  "name": "Org level config Call Supervisor (PMR). almost done.  tenant management/separation",
  "value": "C",
  "size": 2,
  "duration": 2,
  "contractorDuration": 0,
  "startDate": "2021-03-15T04:00:00.000Z",
  "completeDate": "2021-04-30T04:00:00.000Z",
  "dueDate": "2021-04-30T04:00:00.000Z",
  "inProgress": "Yes",
  "tsweeks": 2
  },
  {
  "rank": 14,
  "groupPriority": "Gold",
  "name": "Bandwidth.com Integration (CapOne) - Bryce",
  "value": "C",
  "size": 6,
  "duration": 7,
  "contractorDuration": 0,
  "startDate": "2021-05-03T04:00:00.000Z",
  "completeDate": "2021-06-21T04:00:00.000Z",
  "dueDate": "2021-06-30T04:00:00.000Z",
  "systestweeks": 2,
  "opsweeks": 4
  },
  {
  "rank": 16,
  "groupPriority": "Gold",
  "name": "Cloud Voice Feature auto-expiration/purge before 3 years - Bryce - need this for potential legal reasons - Bryce will check with legal to get priority between Green and Gold - may be needed for June",
  "value": "R",
  "size": 18,
  "duration": 17,
  "contractorDuration": 6,
  "startDate": "2021-05-03T04:00:00.000Z",
  "completeDate": "2021-08-30T04:00:00.000Z",
  "dueDate": "2021-07-10T04:00:00.000Z",
  "afweeks": 12,
  "daweeks": 4,
  "systestweeks": 2,
  "extweeks": 18
  },
  {
  "rank": 15,
  "groupPriority": "Gold",
  "name": "Private API/UI connections to cloud (BMO) - Bryce - deal blocker. need by Q3.",
  "value": "$",
  "size": 8,
  "duration": 8,
  "contractorDuration": 0,
  "startDate": "2021-05-31T04:00:00.000Z",
  "completeDate": "2021-07-26T04:00:00.000Z",
  "dueDate": "2021-07-30T04:00:00.000Z",
  "afweeks": 2,
  "systestweeks": 2,
  "opsweeks": 4
  },
  {
  "rank": 17,
  "groupPriority": "Gold",
  "name": "Prem SIPREC (Lloyd's) - Bryce - the need by end of year - takes months of testing - waiting for customer signature",
  "value": "$",
  "size": 32,
  "duration": 32,
  "contractorDuration": 8,
  "startDate": "2021-04-05T04:00:00.000Z",
  "completeDate": "2021-11-15T05:00:00.000Z",
  "dueDate": "2021-09-30T04:00:00.000Z",
  "tsweeks": 24,
  "systestweeks": 8,
  "extweeks": 32
  },
  {
  "groupPriority": "Gold",
  "name": "Kube Upgrade and CVE - PD-15042 (Migrate services/deployments to new Architecture/cluster - AA, AF services already covered as part of S6 team and project)",
  "value": "R",
  "size": 14,
  "duration": 14,
  "contractorDuration": 0,
  "startDate": "2021-06-07T04:00:00.000Z",
  "completeDate": "2021-09-13T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "daweeks": 12,
  "systestweeks": 2
  },
  {
  "rank": 23,
  "groupPriority": "Gold",
  "name": "Docker CVE - PD-10905, CSP-1586",
  "value": "R",
  "size": 2,
  "duration": 2,
  "contractorDuration": 1,
  "startDate": "2021-06-07T04:00:00.000Z",
  "completeDate": "2021-06-21T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "tsweeks": 2,
  "extweeks": 2
  },
  {
  "rank": 22,
  "groupPriority": "Gold",
  "name": "Urllib3 CVE - PD-16859",
  "value": "R",
  "size": 12,
  "duration": 12,
  "contractorDuration": 3,
  "startDate": "2021-06-07T04:00:00.000Z",
  "completeDate": "2021-08-30T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "aaweeks": 2,
  "afweeks": 2,
  "daweeks": 2,
  "tsweeks": 2,
  "systestweeks": 2,
  "opsweeks": 2,
  "extweeks": 12
  },
  {
  "rank": 18,
  "groupPriority": "Gold",
  "name": "UPS - Universal PIN score - Research driven PIN factor unification.  Pearce agrees.  Contributes to IVR and small effort so Orange",
  "value": "C",
  "size": 8,
  "duration": 8,
  "contractorDuration": 0,
  "startDate": "2021-04-12T04:00:00.000Z",
  "completeDate": "2021-06-07T04:00:00.000Z",
  "daweeks": 8,
  "ivrTt": "x"
  },
  {
  "rank": 19,
  "groupPriority": "Gold",
  "name": "Utilize client-provided information for alerting and investigation (api, ui, bulk import, with csv export)",
  "value": "C",
  "size": 41,
  "duration": 37,
  "contractorDuration": 0,
  "startDate": "2021-07-12T04:00:00.000Z",
  "completeDate": "2022-03-28T04:00:00.000Z",
  "afweeks": 36,
  "systestweeks": 3,
  "opsweeks": 2,
  "churnTt": "x"
  },
  {
  "rank": 20,
  "groupPriority": "Gold",
  "name": "TLS 1.2 Avaya agent on prem (PNC) - Bryce - we need an Avaya lab, part of PNC renewal promised in September. Needs dev work - due September 30",
  "value": "C",
  "size": 10,
  "duration": 10,
  "contractorDuration": 0,
  "startDate": "2021-07-12T04:00:00.000Z",
  "completeDate": "2021-09-20T04:00:00.000Z",
  "dueDate": "2021-09-30T04:00:00.000Z",
  "tsweeks": 8,
  "opsweeks": 2
  },
  {
  "rank": 21,
  "groupPriority": "Gold",
  "name": "AToM  Regression and Automation - on prem has most issues, so that's first - most critical item discussed",
  "value": "C",
  "size": 30,
  "duration": 30,
  "contractorDuration": 8,
  "startDate": "2021-08-02T04:00:00.000Z",
  "completeDate": "2022-02-28T05:00:00.000Z",
  "dueDate": "2021-11-30T05:00:00.000Z",
  "aaweeks": 27,
  "systestweeks": 3,
  "extweeks": 30
  },
  {
  "rank": 24,
  "groupPriority": "Gold",
  "name": "Envoy CVE - PD-8567",
  "value": "R",
  "size": 8,
  "duration": 8,
  "contractorDuration": 0,
  "startDate": "2021-09-06T04:00:00.000Z",
  "completeDate": "2021-11-01T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "opsweeks": 8,
  "extweeks": 8
  },
  {
  "rank": 25,
  "groupPriority": "Gold",
  "name": "Docker/ Linux CVE - CSP-1495",
  "value": "R",
  "size": 0,
  "duration": 0,
  "contractorDuration": 0,
  "startDate": "2021-09-06T04:00:00.000Z",
  "completeDate": "2021-09-06T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z"
  },
  {
  "rank": 26,
  "groupPriority": "Gold",
  "name": "Account Controls - PD-15314, PD-15168",
  "value": "R",
  "size": 1,
  "duration": 1,
  "contractorDuration": 0,
  "startDate": "2021-09-06T04:00:00.000Z",
  "completeDate": "2021-09-13T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "opsweeks": 1
  },
  {
  "rank": 27,
  "groupPriority": "Gold",
  "name": "Checmarx deployed to Cloud - PD-15812",
  "value": "R",
  "size": 0,
  "duration": 0,
  "contractorDuration": 0,
  "startDate": "2021-09-06T04:00:00.000Z",
  "completeDate": "2021-09-06T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "extweeks": 0
  },
  {
  "rank": 28,
  "groupPriority": "Gold",
  "name": "Graph Risk - Pearce and Shawn say important to IVR TT.  ",
  "value": "C",
  "size": 8,
  "duration": 8,
  "contractorDuration": 0,
  "startDate": "2021-07-12T04:00:00.000Z",
  "completeDate": "2021-09-06T04:00:00.000Z",
  "daweeks": 8,
  "ivrTt": "x"
  },
  {
  "rank": 31,
  "groupPriority": "Gold",
  "name": "Genesys Integration (Cloud) - blocker for customers - frustration in the field - need a solution for sales - bryce (genesys pure cloud) - unknown due date",
  "value": "$",
  "size": 14,
  "duration": 14,
  "contractorDuration": 0,
  "startDate": "2021-09-06T04:00:00.000Z",
  "completeDate": "2021-12-13T05:00:00.000Z",
  "tsweeks": 3,
  "systestweeks": 3,
  "opsweeks": 8
  },
  {
  "rank": 30,
  "groupPriority": "Gold",
  "name": "Account Risk Threshold Change - Lloyds and will need for others too",
  "value": "P",
  "size": 20,
  "duration": 19,
  "contractorDuration": 0,
  "startDate": "2021-09-06T04:00:00.000Z",
  "completeDate": "2022-01-17T05:00:00.000Z",
  "afweeks": 4,
  "daweeks": 16,
  "ivrTt": "x"
  },
  {
  "rank": 29,
  "groupPriority": "Gold",
  "name": "Call API beta solution (TIAA) - Bryce - waiting for more data from TIAA if this is orange or blue.  Also needed for IVR.",
  "value": "$",
  "size": 34,
  "duration": 33,
  "contractorDuration": 0,
  "startDate": "2021-08-02T04:00:00.000Z",
  "completeDate": "2022-03-21T04:00:00.000Z",
  "tsweeks": 32,
  "systestweeks": 2
  },
  {
  "rank": 32,
  "groupPriority": "Gold",
  "name": "Replace Blacklist/whitelist term - Amit - this term is considered bad in todays time - no customer ask for it - do this year  (only change customer facing elements)",
  "size": 10,
  "duration": 9,
  "contractorDuration": 0,
  "startDate": "2021-05-03T04:00:00.000Z",
  "completeDate": "2021-07-05T04:00:00.000Z",
  "dueDate": "2021-12-23T05:00:00.000Z",
  "afweeks": 10
  },
  {
  "rank": 33,
  "groupPriority": "Gold",
  "name": "Genesys Agent 1.2 (NFCU) - Bryce - overdue - promised in September of 2020! Have not been able to execute on it. they haven't asked.",
  "value": "C",
  "size": 12,
  "duration": 12,
  "contractorDuration": 0,
  "startDate": "2021-10-04T04:00:00.000Z",
  "completeDate": "2021-12-27T05:00:00.000Z",
  "dueDate": "2020-09-01T05:00:00.000Z",
  "tsweeks": 8,
  "opsweeks": 4
  },
  {
  "groupPriority": "Gold",
  "name": "Native Micdrop improvements (bug related) -- Bryce - clean and reduce cost. customer complaints. completed and deployed",
  "value": "C",
  "size": 1,
  "duration": 1,
  "contractorDuration": 0,
  "startDate": "2021-03-15T04:00:00.000Z",
  "completeDate": "2021-04-02T04:00:00.000Z",
  "inProgress": "Yes",
  "tsweeks": 1
  },
  {
  "groupPriority": "Gold",
  "name": "SKT (South Korea) -  - will contract in Q2, want install end of q3) - Iot",
  "value": "$",
  "size": 0,
  "duration": 0,
  "contractorDuration": 0,
  "completeDate": "1899-12-30T05:00:00.000Z"
  },
  {
  "rank": 34,
  "groupPriority": "Gold",
  "name": "Provide audio call and speaker attributes (Discover Post POC) - due date unknown - Churn related (biggest churn reason for discover)",
  "value": "C",
  "size": 6,
  "duration": 6,
  "contractorDuration": 0,
  "startDate": "2021-09-06T04:00:00.000Z",
  "completeDate": "2021-10-18T04:00:00.000Z",
  "aaweeks": 6,
  "churnTt": "x"
  },
  {
  "groupPriority": "Gold",
  "name": "Next Gen Strategic Architecture (design/plan) - must help on prem customers as orange.  High priority if we are going to unify platforms, otherwise whatever on-prem path is orange",
  "value": "C",
  "size": 0,
  "duration": 0,
  "contractorDuration": 0,
  "startDate": "2021-03-01T05:00:00.000Z",
  "completeDate": "2021-03-01T05:00:00.000Z",
  "dueDate": "2021-04-30T04:00:00.000Z",
  "churnTt": "x"
  },
  {
  "groupPriority": "Gold",
  "name": "TiVo Production Readiness - early Q3 Tivo deadline",
  "value": "$",
  "size": 32,
  "duration": 31,
  "contractorDuration": 0,
  "startDate": "2021-03-16T04:00:00.000Z",
  "completeDate": "2021-08-31T04:00:00.000Z",
  "dueDate": "2021-08-31T04:00:00.000Z",
  "inProgress": "Yes",
  "iotweeks": 32
  },
  {
  "groupPriority": "Green",
  "name": "Cloud Accessibility (BMO) - Bryce - ton of work, some outsourcing, they need by June 2022",
  "value": "$",
  "size": 32,
  "duration": 28,
  "contractorDuration": 11,
  "dueDate": "2022-06-30T04:00:00.000Z",
  "afweeks": 32,
  "extweeks": 32
  },
  {
  "groupPriority": "Green",
  "name": "AT&T 10Gbps turnup - saves us money 90K/mo and OKR, no customer commit, ops resources only",
  "value": "$",
  "size": 2,
  "duration": 2,
  "contractorDuration": 0,
  "inProgress": "Yes",
  "opsweeks": 2
  },
  {
  "groupPriority": "Green",
  "name": "IAM v2 GA (does not include migration effort from v1 to v2)",
  "value": "C",
  "size": 40,
  "duration": 36,
  "contractorDuration": 15,
  "afweeks": 24,
  "daweeks": 16,
  "extweeks": 40
  },
  {
  "groupPriority": "Green",
  "name": "IAM v1 to v2 customer migration ",
  "size": 12,
  "duration": 11,
  "contractorDuration": 0,
  "afweeks": 8,
  "daweeks": 4
  },
  {
  "groupPriority": "Green",
  "name": "Fraud Feedback Data Import - Pearce notes need for iVR TT. one of top TT asks. doing manual now.",
  "size": 0,
  "duration": 0,
  "contractorDuration": 0,
  "churnTt": "x",
  "ivrTt": "x"
  },
  {
  "groupPriority": "Green",
  "name": "UK Cloud - July deadline but Michael can move if needed",
  "value": "$",
  "size": 5,
  "duration": 5,
  "contractorDuration": 0,
  "daweeks": 5
  },
  {
  "groupPriority": "Green",
  "name": "New Authentication Ensemble - Amit.  better auth rates",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Green",
  "name": "Consistent monitoring and alerting - Chris D - ops task - also in Efficiency TT",
  "value": "R",
  "size": 16,
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Green",
  "name": "GUFF File updates (Verizon) - can't accurately invoice - need to update billing file (doing manual now) - need for SOX too.",
  "value": "$",
  "size": 8,
  "duration": 0,
  "contractorDuration": 0,
  "extweeks": 8
  },
  {
  "groupPriority": "Green",
  "name": "Short-lived API tokens (Santander) - will accept a 12 month exception - Pearce - recent ask from Santander - must do within 12 months of implementation - around late Q2",
  "value": "$",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Green",
  "name": "Token Management Automation - causes outages - green trending orange",
  "value": "R",
  "size": 4,
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Green",
  "name": "Create framework for delivering new features to on-premise customers - see architecture milestone on the right - depends on planning, what we can implement",
  "value": "C",
  "size": 64,
  "duration": 0,
  "contractorDuration": 0,
  "churnTt": "x"
  },
  {
  "groupPriority": "Green",
  "name": "Amazon Connect: Support for complete Passport - ANI Validation, Device and Behavior Authentication",
  "value": "P",
  "size": 5,
  "duration": 5,
  "contractorDuration": 0,
  "inProgress": "Yes",
  "tsweeks": 4,
  "systestweeks": 1
  },
  {
  "groupPriority": "Green",
  "name": "Fraud Tagging - Shawn says this is most requested item from 20 customers. want to tag fraud with info, not notes field and reportability. also on churn TT (subset)",
  "value": "C",
  "duration": 0,
  "contractorDuration": 0,
  "churnTt": "x"
  },
  {
  "groupPriority": "Green",
  "name": "Automatic Backcoloring - Shawn says popular with clients. automates copy/paste and manual info moving. Gives Pindrop more credit for fraud finding.",
  "duration": 0,
  "contractorDuration": 0,
  "churnTt": "x"
  },
  {
  "groupPriority": "Green",
  "name": "Voice Mismatch - Amit - helps authentication and risk score.  Mass Mutual asking in Q3 (soft commit)",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Green",
  "name": "New Device Ensemble - reduce device confusion (from Research)",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Green",
  "name": "Risk Factor based on LL feat. (RIFLE) - Terry - will be done by research team - not needed for initial UK deployment",
  "value": "C",
  "size": 8,
  "duration": 0,
  "contractorDuration": 0,
  "ivrTt": "x"
  },
  {
  "groupPriority": "Green",
  "name": "Account-centric alerting and investigation - 12 month effort.  Depends on architectural direction (if we can, given time need)  - if we code once, this is a lower priority.   Otherwise this is critical. Need to do this within 6-9 months.",
  "value": "C",
  "size": 32,
  "duration": 0,
  "contractorDuration": 0,
  "churnTt": "x"
  },
  {
  "groupPriority": "Green",
  "name": "Refresh Avaya Extension PD-9497 - highest Jira for Julien.",
  "value": "C",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Green",
  "name": "STIR/SHAKEN - Bryce. competitive concern.  Discuss with NextCaller to injest this",
  "value": "P",
  "size": 4,
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Artifactory for On Prem Upgrades - Jimmy says for CS savings.",
  "size": 4,
  "duration": 0,
  "contractorDuration": 0,
  "extweeks": 4
  },
  {
  "groupPriority": "Pink",
  "name": "IVR reporting of right data fields for us and customer",
  "value": "P",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "IVR automation and regression testing",
  "value": "P",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Provide additional link analysis for fraud investigation  - fraud tagging (left) is a subset of this.",
  "value": "C",
  "size": 32,
  "duration": 0,
  "contractorDuration": 0,
  "churnTt": "x"
  },
  {
  "groupPriority": "Pink",
  "name": "Cloud GDPR Phase 1 - needed for UK readiness.  M/L remaining.",
  "value": "R",
  "size": 16,
  "duration": 0,
  "contractorDuration": 0,
  "completeDate": "2021-04-09T04:00:00.000Z",
  "inProgress": "Yes"
  },
  {
  "groupPriority": "Pink",
  "name": "Waterdrop to Iris conversion - tech debt - consistent  UI across platform.",
  "value": "E",
  "size": 16,
  "duration": 0,
  "contractorDuration": 0,
  "completeDate": "2021-04-30T04:00:00.000Z",
  "inProgress": "Yes"
  },
  {
  "groupPriority": "Pink",
  "name": "Call Manager - Signaling manager for all capture sources - need to modernize all inconsistent capture sources",
  "value": "E",
  "size": 8,
  "duration": 0,
  "contractorDuration": 0,
  "completeDate": "2021-06-15T04:00:00.000Z",
  "inProgress": "Yes"
  },
  {
  "groupPriority": "Pink",
  "name": "Ternary Caller ID Status and V2 Caller ID API.  Amit - critical but no commit.  can we use NextCaller?  Pink if we can get it as a risk reason",
  "value": "P",
  "size": 8,
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Post delivery Passport Tenant Cleanup PD-6022. Himanshu - too much manual work for Passport customers.  Julien to check scripting workaround for now.",
  "value": "E",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Boost Passport enrollment & auth rates using ANI on file and low risk auth - Amit - ",
  "size": 4,
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Uno Appliance Deployment Issues - Bryce - lots of issues - eg. no HA - can't do upgrades, need to fix - could be green or orange - Bryce to check if this is really going to be used - can we make it pink?",
  "value": "C",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Passport ROI Dashboard - amit",
  "size": 32,
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Reduce the Cost Per Call by 35% - various items in here. can do 22% without ENG.  Scale items (22%) is already covered on left.",
  "value": "$",
  "size": 32,
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "ID Less Authentication - Amit - allows us to match call to our unique ID",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Increase Capacity for Pcap Broker OnPrem - Diego says with is for Wells Fargo. causing outages. Pink now but could be critical.  Reasses in 2 months to see if hardware refresh increases performance.  Could contractor do this?  Action - let's check into this asap.",
  "value": "R",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Deep Phoneprinting (can be orange if Discover accepts POC) - amit",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Pink",
  "name": "Deploy Well Architected (Amazon Partnership) - Bryce to check with ChrisD if this is done",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "GA support for API & UI over VPN or Private Connection ",
  "value": "$",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Automatic TTC Installation and UNO appliance - Diego - tap to cloud is more important.  Bryce thinks uplife isnt that bad - just makes inconsistent installations.  Can live with.",
  "value": "E",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Call Phase in RTES on prem (Jackson) - Pearce - no one using this.  Jackson hasn't brought up again",
  "value": "$",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Call Phase in CSV prem (Jackson) - Pearce - might get bumped to pink if they bring it up",
  "value": "$",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Cloud Localization (France Cloud) - Michael wants to discuss a proactive approach to see if we can partner",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Old Mutual (South Africa) - Start in UK - Pano - was dependent on amazon setting up in south africa - watch this to follow amazon",
  "value": "$",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Sprinklr (India/HDFC) - IoT - unless we can go into their private cloud, we can't win this - need to do strategy of non-Amazon local clouds - George to discuss this as a part of architecture review.  PEr vijay - consider support in this.",
  "value": "$",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Citi Cloud Audit Log Export -will be blocker if they move to cloud.  blue until they decide a date.",
  "value": "$",
  "duration": 0,
  "contractorDuration": 0
  },
  {
  "groupPriority": "Blue",
  "name": "Sonae Protect Cloud Agent (EMEA Cloud) - portugese customer - covid issues there, waiting for them to come back",
  "value": "$",
  "size": 32,
  "duration": 0,
  "contractorDuration": 0
  }
  ]
"""
