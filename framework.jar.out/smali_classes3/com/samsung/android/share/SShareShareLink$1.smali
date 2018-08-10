.class Lcom/samsung/android/share/SShareShareLink$1;
.super Ljava/lang/Object;
.source "SShareShareLink.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SShareShareLink;->setShareLinkView(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/share/SShareShareLink$1;->this$0:Lcom/samsung/android/share/SShareShareLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink$1;->this$0:Lcom/samsung/android/share/SShareShareLink;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareShareLink;->shareLinkItemClick()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareShareLink$1;->this$0:Lcom/samsung/android/share/SShareShareLink;

    invoke-static {v0}, Lcom/samsung/android/share/SShareShareLink;->-get0(Lcom/samsung/android/share/SShareShareLink;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
