.class public Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrderModify;
.super Ljava/lang/Object;
.source "TaskBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOrderModify"
.end annotation


# instance fields
.field public action:I

.field public component:Landroid/content/ComponentName;

.field public id:J

.field public title:Ljava/lang/String;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
