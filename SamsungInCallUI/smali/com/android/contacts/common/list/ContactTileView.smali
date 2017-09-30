.class public abstract Lcom/android/contacts/common/list/ContactTileView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ContactTileView$Listener;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private c:Landroid/net/Uri;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/QuickContactBadge;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/android/contacts/common/ContactPhotoManager;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/ContactTileView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/ContactTileView;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->j:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .locals 2

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->c()Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public a(Lcom/android/contacts/common/list/ContactEntry;)V
    .locals 7

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->f:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactTileView;->b(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->g:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->c:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->c:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->h:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->i:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->j:Lcom/android/contacts/common/ContactPhotoManager;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->h:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ContactTileView;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v6

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->f:Landroid/net/Uri;

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->a(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->j:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->d:Landroid/widget/ImageView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->f:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->getApproximateImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->a()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->c()Z

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->k:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->k:Landroid/view/View;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->g:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->g:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->h:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->j:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    iget-object v2, p1, Lcom/android/contacts/common/list/ContactEntry;->f:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->getApproximateImageSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->a()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->c()Z

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->a(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    goto :goto_2

    :cond_9
    sget-object v0, Lcom/android/contacts/common/list/ContactTileView;->b:Ljava/lang/String;

    const-string v1, "contactPhotoManager not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    iget-object v1, p1, Lcom/android/contacts/common/list/ContactEntry;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected a(Z)V
    .locals 0

    return-void
.end method

.method protected abstract a()Z
.end method

.method protected b()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/android/contacts/common/list/ContactTileView$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactTileView$1;-><init>(Lcom/android/contacts/common/list/ContactTileView;)V

    return-object v0
.end method

.method protected b(Lcom/android/contacts/common/list/ContactEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/android/contacts/common/list/ContactEntry;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getApproximateImageSize()I
.end method

.method public getLookupUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->c:Landroid/net/Uri;

    return-object v0
.end method

.method protected getPhotoView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->f:Landroid/widget/TextView;

    const v0, 0x7f10010d

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/QuickContactBadge;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->e:Landroid/widget/QuickContactBadge;

    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->d:Landroid/widget/ImageView;

    const v0, 0x7f100113

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->g:Landroid/widget/TextView;

    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->h:Landroid/widget/TextView;

    const v0, 0x7f10010e

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->i:Landroid/widget/TextView;

    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->k:Landroid/view/View;

    const v0, 0x7f100110

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileView;->b()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setHorizontalDividerVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->a:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-void
.end method

.method public setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView;->j:Lcom/android/contacts/common/ContactPhotoManager;

    return-void
.end method
