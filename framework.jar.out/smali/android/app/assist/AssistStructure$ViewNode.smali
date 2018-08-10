.class public Landroid/app/assist/AssistStructure$ViewNode;
.super Ljava/lang/Object;
.source "AssistStructure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewNode"
.end annotation


# static fields
.field static final FLAGS_ACCESSIBILITY_FOCUSED:I = 0x1000

.field static final FLAGS_ACTIVATED:I = 0x2000

.field static final FLAGS_ALL_CONTROL:I = -0x100000

.field static final FLAGS_ASSIST_BLOCKED:I = 0x80

.field static final FLAGS_CHECKABLE:I = 0x100

.field static final FLAGS_CHECKED:I = 0x200

.field static final FLAGS_CLICKABLE:I = 0x400

.field static final FLAGS_CONTEXT_CLICKABLE:I = 0x4000

.field static final FLAGS_DISABLED:I = 0x1

.field static final FLAGS_FOCUSABLE:I = 0x10

.field static final FLAGS_FOCUSED:I = 0x20

.field static final FLAGS_HAS_ALPHA:I = 0x20000000

.field static final FLAGS_HAS_AUTOFILL_DATA:I = -0x80000000

.field static final FLAGS_HAS_CHILDREN:I = 0x100000

.field static final FLAGS_HAS_COMPLEX_TEXT:I = 0x800000

.field static final FLAGS_HAS_CONTENT_DESCRIPTION:I = 0x2000000

.field static final FLAGS_HAS_ELEVATION:I = 0x10000000

.field static final FLAGS_HAS_EXTRAS:I = 0x400000

.field static final FLAGS_HAS_ID:I = 0x200000

.field static final FLAGS_HAS_INPUT_TYPE:I = 0x40000

.field static final FLAGS_HAS_LARGE_COORDS:I = 0x4000000

.field static final FLAGS_HAS_LOCALE_LIST:I = 0x10000

.field static final FLAGS_HAS_MATRIX:I = 0x40000000

.field static final FLAGS_HAS_SCROLL:I = 0x8000000

.field static final FLAGS_HAS_TEXT:I = 0x1000000

.field static final FLAGS_HAS_URL:I = 0x80000

.field static final FLAGS_LONG_CLICKABLE:I = 0x800

.field static final FLAGS_OPAQUE:I = 0x8000

.field static final FLAGS_SELECTED:I = 0x40

.field static final FLAGS_VISIBILITY_MASK:I = 0xc

.field public static final TEXT_COLOR_UNDEFINED:I = 0x1

.field public static final TEXT_STYLE_BOLD:I = 0x1

.field public static final TEXT_STYLE_ITALIC:I = 0x2

.field public static final TEXT_STYLE_STRIKE_THRU:I = 0x8

.field public static final TEXT_STYLE_UNDERLINE:I = 0x4


# instance fields
.field mAlpha:F

.field mAutofillHints:[Ljava/lang/String;

.field mAutofillId:Landroid/view/autofill/AutofillId;

.field mAutofillOptions:[Ljava/lang/CharSequence;

.field mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

.field mAutofillType:I

.field mAutofillValue:Landroid/view/autofill/AutofillValue;

.field mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

.field mClassName:Ljava/lang/String;

.field mContentDescription:Ljava/lang/CharSequence;

.field mElevation:F

.field mExtras:Landroid/os/Bundle;

.field mFlags:I

.field mHeight:I

.field mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

.field mId:I

.field mIdEntry:Ljava/lang/String;

.field mIdPackage:Ljava/lang/String;

.field mIdType:Ljava/lang/String;

.field mInputType:I

.field mLocaleList:Landroid/os/LocaleList;

.field mMatrix:Landroid/graphics/Matrix;

.field mSanitized:Z

.field mScrollX:I

.field mScrollY:I

.field mText:Landroid/app/assist/AssistStructure$ViewNodeText;

.field mWebDomain:Ljava/lang/String;

.field mWidth:I

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return-void
.end method

.method constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V
    .locals 12

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, -0x1

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    iput v9, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const v7, 0x22222222

    invoke-virtual {p1, v7, p2}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v3

    iget v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadViews:I

    iget-object v5, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mStringReader:Landroid/os/PooledStringReader;

    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const/high16 v7, 0x200000

    and-int/2addr v7, v1

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/PooledStringReader;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    :cond_0
    const/high16 v7, -0x80000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v8, :cond_c

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {v3}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillValue;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    instance-of v7, v4, Landroid/view/ViewStructure$HtmlInfo;

    if-eqz v7, :cond_1

    check-cast v4, Landroid/view/ViewStructure$HtmlInfo;

    iput-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    :cond_1
    const/high16 v7, 0x4000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_d

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    :goto_1
    const/high16 v7, 0x8000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    :cond_2
    const/high16 v7, 0x40000000    # 2.0f

    and-int/2addr v7, v1

    if-eqz v7, :cond_3

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v7, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v3, v7}, Landroid/os/Parcel;->readFloatArray([F)V

    iget-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    iget-object v10, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mTmpMatrix:[F

    invoke-virtual {v7, v10}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_3
    const/high16 v7, 0x10000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    :cond_4
    const/high16 v7, 0x20000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Landroid/os/Parcel;->readFloat()F

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    :cond_5
    const/high16 v7, 0x2000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_6

    sget-object v7, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    :cond_6
    const/high16 v7, 0x1000000

    and-int/2addr v7, v1

    if-eqz v7, :cond_7

    new-instance v7, Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v10, 0x800000

    and-int/2addr v10, v1

    if-nez v10, :cond_e

    :goto_2
    invoke-direct {v7, v3, v8}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>(Landroid/os/Parcel;Z)V

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_7
    const/high16 v7, 0x40000

    and-int/2addr v7, v1

    if-eqz v7, :cond_8

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    :cond_8
    const/high16 v7, 0x80000

    and-int/2addr v7, v1

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    :cond_9
    const/high16 v7, 0x10000

    and-int/2addr v7, v1

    if-eqz v7, :cond_a

    invoke-virtual {v3, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/LocaleList;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    :cond_a
    const/high16 v7, 0x400000

    and-int/2addr v7, v1

    if-eqz v7, :cond_b

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    :cond_b
    const/high16 v7, 0x100000

    and-int/2addr v7, v1

    if-eqz v7, :cond_f

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v7, v0, [Landroid/app/assist/AssistStructure$ViewNode;

    iput-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_f

    iget-object v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    new-instance v8, Landroid/app/assist/AssistStructure$ViewNode;

    add-int/lit8 v9, p2, 0x1

    invoke-direct {v8, p1, v9}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    aput-object v8, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    move v7, v9

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    and-int/lit16 v7, v6, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v6

    and-int/lit16 v7, v6, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    shr-int/lit8 v7, v6, 0x10

    and-int/lit16 v7, v7, 0x7fff

    iput v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    goto/16 :goto_1

    :cond_e
    move v8, v9

    goto :goto_2

    :cond_f
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    return v0
.end method

.method public getAutofillHints()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    return-object v0
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public getAutofillOptions()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAutofillType()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    return-object v0
.end method

.method public getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    return v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mHint:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getHtmlInfo()Landroid/view/ViewStructure$HtmlInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    return v0
.end method

.method public getIdEntry()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getIdPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    return v0
.end method

.method public getLocaleList()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getScrollX()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_0
    return-object v0
.end method

.method public getTextBackgroundColor()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextBackgroundColor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTextColor()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextColor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getTextLineBaselines()[I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineBaselines:[I

    :cond_0
    return-object v0
.end method

.method public getTextLineCharOffsets()[I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget-object v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mLineCharOffsets:[I

    :cond_0
    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionEnd:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSelectionStart()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSelectionStart:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTextSize()F
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextSize:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextStyle()I
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    iget v0, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mTextStyle:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    return v0
.end method

.method public getTransformation()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isActivated()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAssistBlocked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isClickable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isContextClickable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFocusable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isFocused()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isOpaque()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSanitized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    return v0
.end method

.method public isSelected()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V
    .locals 0

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    return-void
.end method

.method public updateAutofillValue(Landroid/view/autofill/AutofillValue;)V
    .locals 2

    iput-object p1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-direct {v0}, Landroid/app/assist/AssistStructure$ViewNodeText;-><init>()V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    :cond_0
    iget-object v0, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/assist/AssistStructure$ViewNodeText;->mText:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;Z[F)I
    .locals 11

    const/high16 v10, 0x10000

    const/high16 v9, -0x80000000

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mFlags:I

    const v7, 0xfffff

    and-int v0, v4, v7

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    :cond_0
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    if-eqz v4, :cond_1

    or-int/2addr v0, v9

    :cond_1
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    and-int/lit16 v4, v4, -0x8000

    if-nez v4, :cond_2

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    and-int/lit16 v4, v4, -0x8000

    if-eqz v4, :cond_1f

    :cond_2
    :goto_0
    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    :cond_3
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    if-nez v4, :cond_4

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    if-eqz v4, :cond_5

    :cond_4
    const/high16 v4, 0x8000000

    or-int/2addr v0, v4

    :cond_5
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    if-eqz v4, :cond_6

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v0, v4

    :cond_6
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_7

    const/high16 v4, 0x10000000

    or-int/2addr v0, v4

    :cond_7
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_8

    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    :cond_8
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    const/high16 v4, 0x2000000

    or-int/2addr v0, v4

    :cond_9
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    if-eqz v4, :cond_a

    const/high16 v4, 0x1000000

    or-int/2addr v0, v4

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNodeText;->isSimple()Z

    move-result v4

    if-nez v4, :cond_a

    const/high16 v4, 0x800000

    or-int/2addr v0, v4

    :cond_a
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    if-eqz v4, :cond_b

    const/high16 v4, 0x40000

    or-int/2addr v0, v4

    :cond_b
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    if-eqz v4, :cond_c

    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    :cond_c
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    if-eqz v4, :cond_d

    or-int/2addr v0, v10

    :cond_d
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    const/high16 v4, 0x400000

    or-int/2addr v0, v4

    :cond_e
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mChildren:[Landroid/app/assist/AssistStructure$ViewNode;

    if-eqz v4, :cond_f

    const/high16 v4, 0x100000

    or-int/2addr v0, v4

    :cond_f
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mClassName:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    move v3, v0

    and-int v4, v0, v9

    if-eqz v4, :cond_11

    iget-boolean v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v4, :cond_10

    xor-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_11

    :cond_10
    and-int/lit16 v3, v0, -0x201

    :cond_11
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v4, :cond_12

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-boolean v4, v4, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v4, :cond_22

    or-int/lit8 v3, v3, 0x20

    :cond_12
    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_13

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mId:I

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdEntry:Ljava/lang/String;

    if-eqz v4, :cond_13

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdType:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mIdPackage:Ljava/lang/String;

    invoke-virtual {p2, v4}, Landroid/os/PooledStringWriter;->writeString(Ljava/lang/String;)V

    :cond_13
    and-int v4, v0, v9

    if-eqz v4, :cond_14

    iget-boolean v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-nez v4, :cond_23

    xor-int/lit8 v2, p3, 0x1

    :goto_2
    iget-boolean v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mSanitized:Z

    if-eqz v4, :cond_24

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillHints:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    if-eqz v2, :cond_25

    iget-object v1, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillValue:Landroid/view/autofill/AutofillValue;

    :goto_4
    invoke-virtual {p1, v1, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOptions:[Ljava/lang/CharSequence;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    instance-of v4, v4, Landroid/os/Parcelable;

    if-eqz v4, :cond_27

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHtmlInfo:Landroid/view/ViewStructure$HtmlInfo;

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_14
    :goto_5
    const/high16 v4, 0x4000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_28

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :goto_6
    const/high16 v4, 0x8000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_15

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollX:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mScrollY:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_15
    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, v0

    if-eqz v4, :cond_16

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p4}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-virtual {p1, p4}, Landroid/os/Parcel;->writeFloatArray([F)V

    :cond_16
    const/high16 v4, 0x10000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_17

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mElevation:F

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_17
    const/high16 v4, 0x20000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_18

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAlpha:F

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_18
    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_19

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v4, p1, v6}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :cond_19
    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1a

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mText:Landroid/app/assist/AssistStructure$ViewNodeText;

    const/high16 v7, 0x800000

    and-int/2addr v7, v0

    if-nez v7, :cond_29

    :goto_7
    invoke-virtual {v4, p1, v5, v2}, Landroid/app/assist/AssistStructure$ViewNodeText;->writeToParcel(Landroid/os/Parcel;ZZ)V

    :cond_1a
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1b

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mInputType:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1b
    const/high16 v4, 0x80000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1c

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWebDomain:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_1c
    and-int v4, v0, v10

    if-eqz v4, :cond_1d

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mLocaleList:Landroid/os/LocaleList;

    invoke-virtual {p1, v4, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_1d
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1e

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_1e
    return v0

    :cond_1f
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    and-int/lit16 v4, v4, -0x8000

    if-eqz v4, :cond_20

    move v4, v5

    :goto_8
    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    and-int/lit16 v7, v7, -0x8000

    if-eqz v7, :cond_21

    move v7, v5

    :goto_9
    or-int/2addr v4, v7

    if-eqz v4, :cond_3

    goto/16 :goto_0

    :cond_20
    move v4, v6

    goto :goto_8

    :cond_21
    move v7, v6

    goto :goto_9

    :cond_22
    and-int/lit8 v3, v3, -0x21

    goto/16 :goto_1

    :cond_23
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_24
    move v4, v6

    goto/16 :goto_3

    :cond_25
    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v4, v4, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    if-eqz v4, :cond_26

    iget-object v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mAutofillOverlay:Landroid/app/assist/AssistStructure$AutofillOverlay;

    iget-object v1, v4, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    goto/16 :goto_4

    :cond_26
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_27
    invoke-virtual {p1, v8, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_5

    :cond_28
    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mY:I

    shl-int/lit8 v4, v4, 0x10

    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mX:I

    or-int/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget v4, p0, Landroid/app/assist/AssistStructure$ViewNode;->mHeight:I

    shl-int/lit8 v4, v4, 0x10

    iget v7, p0, Landroid/app/assist/AssistStructure$ViewNode;->mWidth:I

    or-int/2addr v4, v7

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_6

    :cond_29
    move v5, v6

    goto :goto_7
.end method
