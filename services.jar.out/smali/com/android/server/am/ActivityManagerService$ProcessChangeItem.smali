.class final Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProcessChangeItem"
.end annotation


# static fields
.field static final CHANGE_ACTIVITIES:I = 0x1


# instance fields
.field changes:I

.field foregroundActivities:Z

.field pid:I

.field processState:I

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
