.class Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;
.super Ljava/lang/Object;
.source "ReportDiagnosticinfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->-wrap0(Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b026d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo$1;->this$0:Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/safetycare/ReportDiagnosticinfo;->finish()V

    :cond_0
    return-void
.end method
