.class final Lcom/cmdm/control/download/a$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmdm/control/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field final synthetic br:Lcom/cmdm/control/download/a;

.field public bu:Landroid/widget/ImageView;

.field public bv:Ljava/lang/String;

.field private bw:Landroid/graphics/drawable/Drawable;

.field public bx:Landroid/graphics/Bitmap;

.field public height:I

.field public url:Ljava/lang/String;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/cmdm/control/download/a;Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/cmdm/control/download/a$c;->br:Lcom/cmdm/control/download/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/cmdm/control/download/a$c;->height:I

    iput v0, p0, Lcom/cmdm/control/download/a$c;->width:I

    iput-object p2, p0, Lcom/cmdm/control/download/a$c;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/cmdm/control/download/a$c;->bw:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/cmdm/control/download/a$c;->bu:Landroid/widget/ImageView;

    iput p5, p0, Lcom/cmdm/control/download/a$c;->width:I

    iput p6, p0, Lcom/cmdm/control/download/a$c;->height:I

    return-void
.end method

.method static synthetic b(Lcom/cmdm/control/download/a$c;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/download/a$c;->bw:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
