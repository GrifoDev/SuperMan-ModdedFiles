.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;
.super Ljava/lang/Object;
.source "PeriodicAdvertisingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

.field final synthetic val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field final synthetic val$report:Landroid/bluetooth/le/PeriodicAdvertisingReport;


# direct methods
.method constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iput-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;->val$report:Landroid/bluetooth/le/PeriodicAdvertisingReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$2;->val$report:Landroid/bluetooth/le/PeriodicAdvertisingReport;

    invoke-virtual {v0, v1}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    return-void
.end method
