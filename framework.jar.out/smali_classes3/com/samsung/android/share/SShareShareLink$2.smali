.class Lcom/samsung/android/share/SShareShareLink$2;
.super Ljava/lang/Object;
.source "SShareShareLink.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SShareShareLink;->setShareLinkView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareShareLink;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareShareLink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/share/SShareShareLink;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink$2;->this$0:Lcom/samsung/android/share/SShareShareLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink$2;->this$0:Lcom/samsung/android/share/SShareShareLink;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareShareLink;->shareLinkTipClick()V

    .line 155
    return-void
.end method
