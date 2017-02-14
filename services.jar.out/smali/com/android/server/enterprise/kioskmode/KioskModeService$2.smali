.class Lcom/android/server/enterprise/kioskmode/KioskModeService$2;
.super Ljava/lang/Object;
.source "KioskModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/kioskmode/KioskModeService;->_disableKioskMode(Lcom/samsung/android/knox/ContextInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

.field final synthetic val$adminUid:I

.field final synthetic val$info:Lcom/samsung/android/knox/ContextInfo;

.field final synthetic val$kioskPackage:Ljava/lang/String;

.field final synthetic val$operation:I

.field final synthetic val$token:J

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;IIIJ)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iput-object p2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$info:Lcom/samsung/android/knox/ContextInfo;

    iput-object p3, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$kioskPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$userId:I

    iput p5, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$adminUid:I

    iput p6, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$operation:I

    iput-wide p7, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$token:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget-object v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$info:Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$kioskPackage:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap7(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap1(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$userId:I

    invoke-static {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap10(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V

    iget-object v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    iget v1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$adminUid:I

    iget v2, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$operation:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-wrap6(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V

    iget-wide v0, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;->val$token:J

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->-set0(Z)Z

    return-void
.end method
