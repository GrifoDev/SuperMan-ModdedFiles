.class Lcom/android/server/pm/PersonaManagerService$PendingNotification;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingNotification"
.end annotation


# instance fields
.field public activityOptions:Landroid/os/Bundle;

.field public notificationKey:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field public userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;ILandroid/app/PendingIntent;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->userId:I

    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->pendingIntent:Landroid/app/PendingIntent;

    iput-object p4, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->activityOptions:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/server/pm/PersonaManagerService$PendingNotification;->notificationKey:Ljava/lang/String;

    return-void
.end method
