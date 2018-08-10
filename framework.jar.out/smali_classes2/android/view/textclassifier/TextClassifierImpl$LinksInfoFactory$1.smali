.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;
.super Landroid/text/style/ClickableSpan;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->createSpan(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/style/ClickableSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
