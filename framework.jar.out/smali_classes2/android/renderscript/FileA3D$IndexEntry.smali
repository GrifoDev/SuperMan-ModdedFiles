.class public Landroid/renderscript/FileA3D$IndexEntry;
.super Ljava/lang/Object;
.source "FileA3D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/FileA3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexEntry"
.end annotation


# static fields
.field private static final synthetic -android-renderscript-FileA3D$EntryTypeSwitchesValues:[I


# instance fields
.field mEntryType:Landroid/renderscript/FileA3D$EntryType;

.field mID:J

.field mIndex:I

.field mLoadedObj:Landroid/renderscript/BaseObj;

.field mName:Ljava/lang/String;

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method private static synthetic -getandroid-renderscript-FileA3D$EntryTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/renderscript/FileA3D$IndexEntry;->-android-renderscript-FileA3D$EntryTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/renderscript/FileA3D$IndexEntry;->-android-renderscript-FileA3D$EntryTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/renderscript/FileA3D$EntryType;->values()[Landroid/renderscript/FileA3D$EntryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/renderscript/FileA3D$EntryType;->MESH:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v1}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v1}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/renderscript/FileA3D$IndexEntry;->-android-renderscript-FileA3D$EntryTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;IJLjava/lang/String;Landroid/renderscript/FileA3D$EntryType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    iput p2, p0, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    iput-wide p3, p0, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    iput-object p5, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    iput-object p6, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    return-void
.end method

.method static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;
    .locals 7

    const/4 v6, 0x0

    const-class v3, Landroid/renderscript/FileA3D$IndexEntry;

    monitor-enter v3

    :try_start_0
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    :cond_0
    :try_start_1
    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    sget-object v4, Landroid/renderscript/FileA3D$EntryType;->UNKNOWN:Landroid/renderscript/FileA3D$EntryType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v4, :cond_1

    monitor-exit v3

    return-object v6

    :cond_1
    :try_start_2
    iget-wide v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mID:J

    iget v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mIndex:I

    invoke-virtual {p0, v4, v5, v2}, Landroid/renderscript/RenderScript;->nFileA3DGetEntryByIndex(JI)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    monitor-exit v3

    return-object v6

    :cond_2
    :try_start_3
    invoke-static {}, Landroid/renderscript/FileA3D$IndexEntry;->-getandroid-renderscript-FileA3D$EntryTypeSwitchesValues()[I

    move-result-object v2

    iget-object v4, p1, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    invoke-virtual {v4}, Landroid/renderscript/FileA3D$EntryType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string/jumbo v4, "Unrecognized object type in file."

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_0
    :try_start_4
    new-instance v2, Landroid/renderscript/Mesh;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;

    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->updateFromNative()V

    iget-object v2, p1, Landroid/renderscript/FileA3D$IndexEntry;->mLoadedObj:Landroid/renderscript/BaseObj;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v3

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getEntryType()Landroid/renderscript/FileA3D$EntryType;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mEntryType:Landroid/renderscript/FileA3D$EntryType;

    return-object v0
.end method

.method public getMesh()Landroid/renderscript/Mesh;
    .locals 1

    invoke-virtual {p0}, Landroid/renderscript/FileA3D$IndexEntry;->getObject()Landroid/renderscript/BaseObj;

    move-result-object v0

    check-cast v0, Landroid/renderscript/Mesh;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/FileA3D$IndexEntry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/renderscript/BaseObj;
    .locals 2

    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->validate()V

    iget-object v1, p0, Landroid/renderscript/FileA3D$IndexEntry;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1, p0}, Landroid/renderscript/FileA3D$IndexEntry;->internalCreate(Landroid/renderscript/RenderScript;Landroid/renderscript/FileA3D$IndexEntry;)Landroid/renderscript/BaseObj;

    move-result-object v0

    return-object v0
.end method
