.class final Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstallData"
.end annotation


# instance fields
.field mPackageName:Ljava/lang/String;

.field mSessionId:I

.field mStatusCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;-><init>()V

    return-void
.end method
