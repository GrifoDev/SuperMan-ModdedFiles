.class Lcom/samsung/context/sdk/samsunganalytics/a/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/b;-><init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Application;

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/a/b;


# direct methods
.method constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/a/b;Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$1;->b:Lcom/samsung/context/sdk/samsunganalytics/a/b;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$1;->a:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAgreement()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/a/b$1;->a:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "samsung_errorlog_agree"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
