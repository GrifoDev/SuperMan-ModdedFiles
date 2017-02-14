.class Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/print/PrintManager$PrintJobStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->onStartLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader$1;->this$1:Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;->-wrap0(Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;)V

    return-void
.end method
