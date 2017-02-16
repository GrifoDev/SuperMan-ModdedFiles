.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnIndex:I

.field private mColumnSpan:I

.field private mHeading:Z

.field private mRowIndex:I

.field private mRowSpan:I

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4134
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 4133
    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 4130
    return-void
.end method

.method private constructor <init>(IIIIZZ)V
    .locals 0
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 4204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4206
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 4207
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 4208
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 4209
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 4210
    iput-boolean p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 4211
    iput-boolean p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 4205
    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4278
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 4279
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 4280
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 4281
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 4282
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 4283
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 4277
    return-void
.end method

.method public static obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 6
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z

    .prologue
    .line 4158
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 8
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .param p5, "selected"    # Z

    .prologue
    .line 4173
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4174
    .local v7, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    if-nez v7, :cond_0

    .line 4175
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v0

    .line 4179
    :cond_0
    iput p0, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 4180
    iput p1, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 4181
    iput p2, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 4182
    iput p3, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 4183
    iput-boolean p4, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 4184
    iput-boolean p5, v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 4185
    return-object v7
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 6
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .prologue
    .line 4143
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 4144
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    .line 4143
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColumnIndex()I
    .locals 1

    .prologue
    .line 4220
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return v0
.end method

.method public getColumnSpan()I
    .locals 1

    .prologue
    .line 4238
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return v0
.end method

.method public getRowIndex()I
    .locals 1

    .prologue
    .line 4229
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .prologue
    .line 4247
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return v0
.end method

.method public isHeading()Z
    .locals 1

    .prologue
    .line 4257
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 4266
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return v0
.end method

.method recycle()V
    .locals 1

    .prologue
    .line 4273
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->clear()V

    .line 4274
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 4272
    return-void
.end method
