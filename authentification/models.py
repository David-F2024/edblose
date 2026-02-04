from django.db import models

# La table utilisateur
class TUser(models.Model):
    idt_user = models.AutoField(primary_key=True, db_column='IDt_user')
    nm_user = models.CharField(max_length=50, db_column='NM_USER', null=True)
    prn_user = models.CharField(max_length=50, db_column='PRN_USER', null=True)
    cd_user = models.CharField(max_length=5, db_column='CD_USER', null=True)
    mdp = models.CharField(max_length=100, db_column='MDP', null=True)
    mail_user = models.EmailField(max_length=50, db_column='MAIL_USER', null=True)
    tel_user = models.CharField(max_length=50, db_column='TEL_USER', null=True)

    class Meta:
        db_table = 't_user'
        managed = False  # IMPORTANT : table déjà existante. Django ne touche pas à la table, il l’utilise seulement.
