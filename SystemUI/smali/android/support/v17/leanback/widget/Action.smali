.class public Landroid/support/v17/leanback/widget/Action;
.super Ljava/lang/Object;
.source "Action.java"


# instance fields
.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mId:J

.field private mKeyCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel1:Ljava/lang/CharSequence;

.field private mLabel2:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/Action;-><init>(JLjava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v17/leanback/widget/Action;-><init>(JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/support/v17/leanback/widget/Action;-><init>(JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/Action;->mId:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Action;->mKeyCodes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/Action;->setId(J)V

    invoke-virtual {p0, p3}, Landroid/support/v17/leanback/widget/Action;->setLabel1(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Landroid/support/v17/leanback/widget/Action;->setLabel2(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p5}, Landroid/support/v17/leanback/widget/Action;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final addKeyCode(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Action;->mKeyCodes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/Action;->mId:J

    return-wide v0
.end method

.method public final getLabel1()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Action;->mLabel1:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getLabel2()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Action;->mLabel2:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final respondsToKeyCode(I)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Action;->mKeyCodes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setId(J)V
    .locals 1

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/Action;->mId:J

    return-void
.end method

.method public final setLabel1(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/Action;->mLabel1:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setLabel2(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/Action;->mLabel2:Ljava/lang/CharSequence;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Action;->mLabel1:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Action;->mLabel1:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Action;->mLabel2:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Action;->mLabel1:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Action;->mLabel2:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Action;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "(action icon)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
