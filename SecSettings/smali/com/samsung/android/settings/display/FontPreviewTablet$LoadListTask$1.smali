.class Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask$1;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask$1;->this$1:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask$1;->this$1:Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;

    iget-object v0, v0, Lcom/samsung/android/settings/display/FontPreviewTablet$LoadListTask;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    return-void
.end method
