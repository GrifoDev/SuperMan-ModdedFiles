.class public Landroid/content/res/ResourcesImpl$ThemeImpl;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeImpl"
.end annotation


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mKey:Landroid/content/res/Resources$ThemeKey;

.field private final mTheme:J

.field private mThemeResId:I

.field final synthetic this$0:Landroid/content/res/ResourcesImpl;


# direct methods
.method static synthetic -get0(Landroid/content/res/ResourcesImpl$ThemeImpl;)Landroid/content/res/Resources$ThemeKey;
    .locals 1

    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method constructor <init>(Landroid/content/res/ResourcesImpl;)V
    .locals 2
    .param p1, "this$0"    # Landroid/content/res/ResourcesImpl;

    .prologue
    .line 1120
    iput-object p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1109
    new-instance v0, Landroid/content/res/Resources$ThemeKey;

    invoke-direct {v0}, Landroid/content/res/Resources$ThemeKey;-><init>()V

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    .line 1118
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1121
    iget-object v0, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    .line 1122
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->createTheme()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1120
    return-void
.end method


# virtual methods
.method applyStyle(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .prologue
    .line 1144
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v1

    .line 1145
    :try_start_0
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v2, v3, p1, p2}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V

    .line 1147
    iput p1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1148
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources$ThemeKey;->append(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1143
    return-void

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1226
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v1

    .line 1227
    :try_start_0
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v2, v3, p1, p2, p3}, Landroid/content/res/AssetManager;->dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1225
    return-void

    .line 1226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1127
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1128
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-virtual {v0, v2, v3}, Landroid/content/res/AssetManager;->releaseTheme(J)V

    .line 1126
    return-void
.end method

.method getAllAttributes()[I
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->getStyleAttributes(I)[I

    move-result-object v0

    return-object v0
.end method

.method getAppliedStyleResId()I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    return v0
.end method

.method getChangingConfigurations()I
    .locals 6

    .prologue
    .line 1218
    iget-object v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v2

    .line 1220
    :try_start_0
    iget-wide v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v4, v5}, Landroid/content/res/AssetManager;->getThemeChangingConfigurations(J)I

    move-result v0

    .line 1221
    .local v0, "nativeChangingConfig":I
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->activityInfoConfigNativeToJava(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    .line 1218
    .end local v0    # "nativeChangingConfig":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method getKey()Landroid/content/res/Resources$ThemeKey;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    return-object v0
.end method

.method getNativeTheme()J
    .locals 2

    .prologue
    .line 1136
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    return-wide v0
.end method

.method getTheme()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 1232
    iget-object v8, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v8

    .line 1233
    :try_start_0
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v0, v7, Landroid/content/res/Resources$ThemeKey;->mCount:I

    .line 1234
    .local v0, "N":I
    mul-int/lit8 v7, v0, 0x2

    new-array v6, v7, [Ljava/lang/String;

    .line 1235
    .local v6, "themes":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 1236
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v5, v7, v4

    .line 1237
    .local v5, "resId":I
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v7, v7, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v2, v7, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1239
    .local v2, "forced":Z
    :try_start_1
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->this$0:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v7, v5}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    :goto_1
    add-int/lit8 v9, v3, 0x1

    if-eqz v2, :cond_0

    :try_start_2
    const-string/jumbo v7, "forced"

    :goto_2
    aput-object v7, v6, v9

    .line 1235
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1240
    :catch_0
    move-exception v1

    .line 1241
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1232
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v2    # "forced":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "resId":I
    .end local v6    # "themes":[Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 1243
    .restart local v0    # "N":I
    .restart local v2    # "forced":Z
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "resId":I
    .restart local v6    # "themes":[Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string/jumbo v7, "not forced"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .end local v2    # "forced":Z
    .end local v5    # "resId":I
    :cond_1
    monitor-exit v8

    .line 1245
    return-object v6
.end method

.method obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 15
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 1169
    iget-object v14, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v14

    .line 1170
    :try_start_0
    move-object/from16 v0, p3

    array-length v12, v0

    .line 1171
    .local v12, "len":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 1177
    .local v11, "array":Landroid/content/res/TypedArray;
    move-object/from16 v0, p2

    check-cast v0, Landroid/content/res/XmlBlock$Parser;

    move-object v13, v0

    .line 1178
    .local v13, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    .line 1179
    if-eqz v13, :cond_0

    iget-wide v6, v13, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    .line 1180
    :goto_0
    iget-object v9, v11, Landroid/content/res/TypedArray;->mData:[I

    iget-object v10, v11, Landroid/content/res/TypedArray;->mIndices:[I

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v8, p3

    .line 1178
    invoke-static/range {v2 .. v10}, Landroid/content/res/AssetManager;->applyStyle(JIIJ[I[I[I)Z

    .line 1181
    move-object/from16 v0, p1

    iput-object v0, v11, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1182
    iput-object v13, v11, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    .line 1184
    return-object v11

    .line 1179
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 1169
    .end local v11    # "array":Landroid/content/res/TypedArray;
    .end local v12    # "len":I
    .end local v13    # "parser":Landroid/content/res/XmlBlock$Parser;
    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2
.end method

.method rebase()V
    .locals 8

    .prologue
    .line 1255
    iget-object v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v4

    .line 1256
    :try_start_0
    iget-wide v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v6, v7}, Landroid/content/res/AssetManager;->clearTheme(J)V

    .line 1259
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget v3, v3, Landroid/content/res/Resources$ThemeKey;->mCount:I

    if-ge v1, v3, :cond_0

    .line 1260
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mResId:[I

    aget v2, v3, v1

    .line 1261
    .local v2, "resId":I
    iget-object v3, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    iget-object v3, v3, Landroid/content/res/Resources$ThemeKey;->mForce:[Z

    aget-boolean v0, v3, v1

    .line 1262
    .local v0, "force":Z
    iget-wide v6, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v6, v7, v2, v0}, Landroid/content/res/AssetManager;->applyThemeStyle(JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "force":Z
    .end local v2    # "resId":I
    :cond_0
    monitor-exit v4

    .line 1254
    return-void

    .line 1255
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .locals 8
    .param p1, "resid"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .prologue
    .line 1208
    iget-object v7, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v7

    .line 1209
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mAssets:Landroid/content/res/AssetManager;

    iget-wide v2, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->getThemeValue(JILandroid/util/TypedValue;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v7

    return v0

    .line 1208
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;
    .locals 11
    .param p1, "wrapper"    # Landroid/content/res/Resources$Theme;
    .param p2, "values"    # [I
    .param p3, "attrs"    # [I

    .prologue
    .line 1192
    iget-object v10, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v10

    .line 1193
    :try_start_0
    array-length v9, p3

    .line 1194
    .local v9, "len":I
    if-eqz p2, :cond_0

    array-length v0, p2

    if-eq v9, v0, :cond_1

    .line 1195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1196
    const-string/jumbo v1, "Base attribute values must the same length as attrs"

    .line 1195
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    .end local v9    # "len":I
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0

    .line 1199
    .restart local v9    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1200
    .local v8, "array":Landroid/content/res/TypedArray;
    iget-wide v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-object v6, v8, Landroid/content/res/TypedArray;->mData:[I

    iget-object v7, v8, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Landroid/content/res/AssetManager;->resolveAttrs(JII[I[I[I[I)Z

    .line 1201
    iput-object p1, v8, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1202
    const/4 v0, 0x0

    iput-object v0, v8, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    .line 1203
    return-object v8
.end method

.method setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .locals 8
    .param p1, "other"    # Landroid/content/res/ResourcesImpl$ThemeImpl;

    .prologue
    .line 1153
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v1

    .line 1154
    :try_start_0
    iget-object v2, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1155
    :try_start_1
    iget-wide v4, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    iget-wide v6, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mTheme:J

    invoke-static {v4, v5, v6, v7}, Landroid/content/res/AssetManager;->copyTheme(JJ)V

    .line 1157
    iget v0, p1, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    iput v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mThemeResId:I

    .line 1158
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$ThemeImpl;->mKey:Landroid/content/res/Resources$ThemeKey;

    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$ThemeKey;->setTo(Landroid/content/res/Resources$ThemeKey;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1152
    return-void

    .line 1154
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1153
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
