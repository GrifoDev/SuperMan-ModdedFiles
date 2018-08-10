.class Landroid/graphics/drawable/VectorDrawable$VGroup;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VGroup$1;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$2;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$3;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$4;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$5;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$6;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$7;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$8;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$9;
    }
.end annotation


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x64

.field private static final PIVOT_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIVOT_X_INDEX:I = 0x1

.field private static final PIVOT_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIVOT_Y_INDEX:I = 0x2

.field private static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROTATION_INDEX:I = 0x0

.field private static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_X_INDEX:I = 0x3

.field private static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_Y_INDEX:I = 0x4

.field private static final TRANSFORM_PROPERTY_COUNT:I = 0x7

.field private static final TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATE_X_INDEX:I = 0x5

.field private static final TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATE_Y_INDEX:I = 0x6

.field private static final sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VObject;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mIsStateful:Z

.field private final mNativePtr:J

.field private mThemeAttrs:[I

.field private mTransform:[F


# direct methods
.method static synthetic -get0()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get1()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get2()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get3()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get4()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get5()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get6()Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    return-object v0
.end method

.method static synthetic -get7(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    return v0
.end method

.method static synthetic -get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$1;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$2;

    const-string/jumbo v1, "translateX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$3;

    const-string/jumbo v1, "translateY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$4;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$5;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$6;

    const-string/jumbo v1, "pivotX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$7;

    const-string/jumbo v1, "pivotY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$8;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$9;

    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;-><init>()V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-wrap23()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    iput-object v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-wide v6, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/graphics/drawable/VectorDrawable;->-wrap24(J)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v5, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    new-instance v5, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v5, v2, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v5, :cond_3

    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    :goto_2
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    if-eqz v5, :cond_4

    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Unknown object in the tree!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    return-void
.end method

.method static getPropertyIndex(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V
    .locals 4

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap27(JJ)V

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 7

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    sget-object v6, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v6

    or-int/2addr v5, v6

    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v4, :cond_0

    return v5

    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method getNativeSize()I
    .locals 3

    const/16 v1, 0x64

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativeSize()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getPivotX()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap4(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPivotY()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap5(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap7(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleX()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap8(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScaleY()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap9(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslateX()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap12(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTranslateY()F
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap13(J)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusStateSpecified()Z
    .locals 6

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VObject;->hasFocusStateSpecified()Z

    move-result v5

    or-int/2addr v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    return v0
.end method

.method public onStateChange([I)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->onStateChange([I)Z

    move-result v5

    or-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public setPivotX(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap33(JF)V

    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap34(JF)V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap36(JF)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap37(JF)V

    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap38(JF)V

    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap42(JF)V

    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap43(JF)V

    :cond_0
    return-void
.end method

.method public setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 13

    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    if-nez v0, :cond_0

    const/4 v0, 0x7

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    :cond_0
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v12, 0x7

    invoke-static {v0, v1, v11, v12}, Landroid/graphics/drawable/VectorDrawable;->-wrap1(J[FI)Z

    move-result v10

    if-nez v10, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Error: inconsistent property count"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x5

    aget v0, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x6

    aget v0, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    iput-object v9, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-static {v0, v1, v11}, Landroid/graphics/drawable/VectorDrawable;->-wrap30(JLjava/lang/String;)V

    :cond_2
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static/range {v0 .. v8}, Landroid/graphics/drawable/VectorDrawable;->-wrap50(JFFFFFFF)V

    return-void
.end method
