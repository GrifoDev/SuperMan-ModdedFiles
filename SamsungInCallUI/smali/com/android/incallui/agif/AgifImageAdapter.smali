.class public Lcom/android/incallui/agif/AgifImageAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifImageAdapter"


# instance fields
.field protected final AGIF_CONTENT_COUNT:I

.field private mAgifContentsInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x6

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v3, p0, Lcom/android/incallui/agif/AgifImageAdapter;->AGIF_CONTENT_COUNT:I

    iput-object p1, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v2, p3, 0x6

    add-int/2addr v2, v0

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    mul-int/lit8 v2, p3, 0x6

    add-int/2addr v2, v0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;->agifName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    const v5, 0x7f100014

    const v4, 0x7f100013

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_7

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;->contentUri:Ljava/lang/String;

    move-object v2, v0

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;-><init>(Lcom/android/incallui/agif/AgifImageAdapter;Lcom/android/incallui/agif/AgifImageAdapter$1;)V

    new-instance v1, Lcom/android/incallui/agif/AgifImageView;

    iget-object v3, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/incallui/agif/AgifImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    iget-object v1, v0, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    invoke-virtual {v1, v5, v0}, Lcom/android/incallui/agif/AgifImageView;->setTag(ILjava/lang/Object;)V

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/a/g;->b(Landroid/content/Context;)Lcom/a/a/j;

    move-result-object v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/a/a/j;->a(Landroid/net/Uri;)Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b;->h()Lcom/a/a/f;

    move-result-object v0

    sget-object v3, Lcom/a/a/d/b/b;->b:Lcom/a/a/d/b/b;

    invoke-virtual {v0, v3}, Lcom/a/a/f;->a(Lcom/a/a/d/b/b;)Lcom/a/a/e;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/a/a/e;->a(Z)Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/e;->a()Lcom/a/a/e;

    move-result-object v0

    iget-object v3, v1, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    invoke-virtual {v0, v3}, Lcom/a/a/e;->a(Landroid/widget/ImageView;)Lcom/a/a/h/b/j;

    iget-object v0, v1, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    invoke-virtual {v0, v4, v2}, Lcom/android/incallui/agif/AgifImageView;->setTag(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, v1, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mAgifContentsInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;

    iget-object v0, v0, Lcom/android/incallui/agif/AgifLoader$AgifContentsInfo;->agifName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/incallui/agif/AgifImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, v1, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    invoke-virtual {v0, p0}, Lcom/android/incallui/agif/AgifImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, v1, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    :cond_3
    :goto_2
    return-object p2

    :cond_4
    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;

    if-nez v0, :cond_6

    const-string v0, "AgifImageAdapter"

    const-string v1, "The viewHolder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    check-cast p2, Lcom/android/incallui/agif/AgifImageView;

    iput-object p2, v0, Lcom/android/incallui/agif/AgifImageAdapter$ViewHolder;->contentImage:Lcom/android/incallui/agif/AgifImageView;

    move-object v1, v0

    goto :goto_1

    :cond_7
    move-object v2, v1

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const v3, 0x7f100013

    const-string v0, "AgifImageAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgifImageAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick : getTag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasIncomingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getAnswerUi()Lcom/android/incallui/AnswerUi;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerUi;->onSelectAgifContents(Landroid/net/Uri;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_selectAgif(Ljava/lang/String;Lcom/android/incallui/Call;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/agif/AgifCallServiceUtils;->sendRejectWithAgifMessage(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_selectAgif(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->setAgifUri(Landroid/net/Uri;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/incallui/UiAdapter;->onSelectAgifContents(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method
