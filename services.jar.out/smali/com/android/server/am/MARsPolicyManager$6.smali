.class Lcom/android/server/am/MARsPolicyManager$6;
.super Landroid/database/ContentObserver;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->registerEnabledAccessibilityServicesChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$6;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager$6;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager;->-wrap7(Lcom/android/server/am/MARsPolicyManager;)V

    return-void
.end method
