.class Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;
.super Landroid/os/AsyncTask;
.source "RcsShareUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsShareUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcsSwitchQuerryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/secrcs/RcsShareUI$1;

    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 211
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 213
    .local v8, "result":Ljava/lang/Boolean;
    :try_start_0
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->RCS_SWITCH_PREFERENCE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "rcs_enabled"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    # setter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1302(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 219
    :cond_0
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor C = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 221
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsRcsEnabledTask: no records found"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 224
    :cond_1
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 225
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IsRcsEnabledTask: empty record"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 227
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_2
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 230
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v0

    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "rcs_enabled"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 231
    .local v7, "nEnabled":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    move-object v8, v9

    .line 232
    :goto_1
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 233
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->c:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$1300()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v7    # "nEnabled":I
    :cond_3
    :goto_2
    move-object v0, v8

    .line 238
    goto :goto_0

    .line 231
    .restart local v7    # "nEnabled":I
    :cond_4
    if-ne v7, v10, :cond_5

    move v0, v10

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_1

    :cond_5
    move v0, v11

    goto :goto_3

    .line 235
    .end local v7    # "nEnabled":I
    :catch_0
    move-exception v6

    .line 236
    .local v6, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bad query ,No data found"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 244
    # getter for: Lcom/android/incallui/secrcs/RcsShareUI;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsRcsEnabledTask: onPostExecute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/secrcs/RcsShareUI;->isRcsSwtich:Z

    .line 246
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 207
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/incallui/secrcs/RcsShareUI$RcsSwitchQuerryTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
