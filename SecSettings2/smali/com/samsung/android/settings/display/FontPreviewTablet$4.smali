.class Lcom/samsung/android/settings/display/FontPreviewTablet$4;
.super Ljava/lang/Object;
.source "FontPreviewTablet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FontPreviewTablet;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FontPreviewTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/FontPreviewTablet$4;->this$0:Lcom/samsung/android/settings/display/FontPreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/FontPreviewTablet;->finish()V

    return-void
.end method
