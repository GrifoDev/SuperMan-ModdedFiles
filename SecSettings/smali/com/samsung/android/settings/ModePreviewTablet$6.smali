.class Lcom/samsung/android/settings/ModePreviewTablet$6;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ModePreviewTablet;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ModePreviewTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ModePreviewTablet$6;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.ColorBalanceSettingsDialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet$6;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/ModePreviewTablet;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
