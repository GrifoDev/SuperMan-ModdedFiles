.class Lcom/samsung/context/sdk/samsunganalytics/a/a$1;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/a;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/a/a;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/a;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$1;->b:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$1;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgreement()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/a$1;->a:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "samsung_errorlog_agree"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
