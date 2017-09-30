.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;
    }
.end annotation


# static fields
.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# instance fields
.field private final mExpectedCount:Ljava/lang/Integer;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mValues:Landroid/content/ContentValues;

.field private final mValuesBackReferences:Landroid/content/ContentValues;

.field private final mYieldAllowed:Z

.field private final tableName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mType:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->tableName:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValues:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelection:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mExpectedCount:Ljava/lang/Integer;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mYieldAllowed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;)V

    return-void
.end method

.method public static newDelete(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;-><init>(ILjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$1;)V

    return-object v0
.end method

.method public static newInsert(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;-><init>(ILjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$1;)V

    return-object v0
.end method

.method public static newUpdate(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$Builder;-><init>(ILjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mType:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->tableName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->tableName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelection:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->tableName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelection:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public apply(Landroid/database/sqlite/SQLiteDatabase;[J)J
    .locals 6

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mType:I

    packed-switch v0, :pswitch_data_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValues:Landroid/content/ContentValues;

    aget-wide v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->tableName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValues:Landroid/content/ContentValues;

    aget-wide v4, p2, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mValues:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelection:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->tableName:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelection:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CustomCPO;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
