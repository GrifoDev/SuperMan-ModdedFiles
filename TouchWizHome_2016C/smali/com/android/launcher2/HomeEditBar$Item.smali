.class Lcom/android/launcher2/HomeEditBar$Item;
.super Ljava/lang/Object;
.source "HomeEditBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeEditBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Item"
.end annotation


# instance fields
.field private Container:Landroid/widget/FrameLayout;

.field private circleView:Landroid/widget/ImageView;

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private label:Ljava/lang/CharSequence;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/launcher2/HomeEditBar;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/HomeEditBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$Item;->this$0:Lcom/android/launcher2/HomeEditBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/HomeEditBar;Lcom/android/launcher2/HomeEditBar$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar$Item;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$Item;->circleView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/launcher2/HomeEditBar$Item;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar$Item;->updateText()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher2/HomeEditBar$Item;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/launcher2/HomeEditBar$Item;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher2/HomeEditBar$Item;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$Item;->drawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$Item;->Container:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/HomeEditBar$Item;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/HomeEditBar$Item;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar$Item;->iconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private updateText()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar$Item;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
