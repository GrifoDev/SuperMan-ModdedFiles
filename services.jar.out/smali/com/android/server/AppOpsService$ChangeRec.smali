.class final Lcom/android/server/AppOpsService$ChangeRec;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChangeRec"
.end annotation


# instance fields
.field final op:I

.field final pkg:Ljava/lang/String;

.field final uid:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/AppOpsService$ChangeRec;->op:I

    iput p2, p0, Lcom/android/server/AppOpsService$ChangeRec;->uid:I

    iput-object p3, p0, Lcom/android/server/AppOpsService$ChangeRec;->pkg:Ljava/lang/String;

    return-void
.end method
