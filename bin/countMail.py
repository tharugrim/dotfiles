#!/usr/bin/env python
import os, os.path

# Account: Zoho

mailboxZoho='/home/tobias/mail/zoho/'
newInZoho=0

for name in os.listdir(mailboxZoho):
    if os.path.isdir(mailboxZoho+name):
        for mail in os.listdir(mailboxZoho+name+'/new/'):
            if os.path.isfile(mailboxZoho+name+'/new/'+mail):
                newInZoho = newInZoho + 1

# Account: GMail

mailboxGmail='/home/tobias/mail/gmail/'
newInGMail=0

for name in os.listdir(mailboxGmail):
    if os.path.isdir(mailboxGmail+name):
        for mail in os.listdir(mailboxGmail+name+'/new/'):
            if os.path.isfile(mailboxGmail+name+'/new/'+mail):
                newInGMail = newInGMail + 1

print(str(newInGMail)+', '+str(newInZoho))
