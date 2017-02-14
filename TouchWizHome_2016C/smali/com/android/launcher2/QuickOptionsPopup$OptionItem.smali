.class Lcom/android/launcher2/QuickOptionsPopup$OptionItem;
.super Ljava/lang/Object;
.source "QuickOptionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickOptionsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    }
.end annotation


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/QuickOptionsPopup$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    return-object p1
.end method
