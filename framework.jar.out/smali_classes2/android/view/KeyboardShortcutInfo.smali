.class public final Landroid/view/KeyboardShortcutInfo;
.super Ljava/lang/Object;
.source "KeyboardShortcutInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyboardShortcutInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseCharacter:C

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mKeycode:I

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mModifiers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/KeyboardShortcutInfo$1;

    invoke-direct {v0}, Landroid/view/KeyboardShortcutInfo$1;-><init>()V

    sput-object v0, Landroid/view/KeyboardShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/KeyboardShortcutInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/KeyboardShortcutInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;CI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput-char p2, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    iput v1, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    iput-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    if-ltz p3, :cond_0

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    if-gt p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p3, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    iput p4, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBaseCharacter()C
    .locals 1

    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getKeycode()I
    .locals 1

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/view/KeyboardShortcutInfo;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-char v0, p0, Landroid/view/KeyboardShortcutInfo;->mBaseCharacter:C

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mKeycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/KeyboardShortcutInfo;->mModifiers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
