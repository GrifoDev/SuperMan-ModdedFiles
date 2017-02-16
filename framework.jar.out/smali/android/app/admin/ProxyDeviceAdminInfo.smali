.class public final Landroid/app/admin/ProxyDeviceAdminInfo;
.super Ljava/lang/Object;
.source "ProxyDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/ProxyDeviceAdminInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/ProxyDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROXY_ADMIN_TYPE_LOCAL:I = 0x1

.field public static final PROXY_ADMIN_TYPE_UNIVERSAL:I = 0x2

.field static final TAG:Ljava/lang/String; = "ProxyDeviceAdminInfo"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mIcon:[B

.field private final mLabel:Ljava/lang/String;

.field private final mReceiver:Landroid/content/pm/ResolveInfo;

.field private final mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 262
    new-instance v0, Landroid/app/admin/ProxyDeviceAdminInfo$1;

    invoke-direct {v0}, Landroid/app/admin/ProxyDeviceAdminInfo$1;-><init>()V

    sput-object v0, Landroid/app/admin/ProxyDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 112
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 117
    invoke-direct {p0, p2, p1}, Landroid/app/admin/ProxyDeviceAdminInfo;->parsePolicies(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 118
    invoke-virtual {p0}, Landroid/app/admin/ProxyDeviceAdminInfo;->parseRequestedPermissions()V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "icon"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p5, "policyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 99
    iput-object p2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 100
    iput-object p3, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 102
    iput-object p5, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ResolveInfo;Ljava/util/List;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "policyPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 123
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 126
    iput-object p2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 137
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 133
    :goto_0
    return-void

    .line 142
    :cond_0
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    goto :goto_0
.end method

.method private parsePolicies(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "receiver"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 280
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 282
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 284
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string/jumbo v13, "android.app.device_admin"

    invoke-virtual {v1, v8, v13}, Landroid/content/pm/PackageItemInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .line 285
    .local v7, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v7, :cond_1

    .line 286
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v14, "No android.app.device_admin meta-data"

    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v3

    .line 325
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    .line 326
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unable to create context for: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 325
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v13

    .line 328
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 327
    :cond_0
    throw v13

    .line 290
    .restart local v7    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    iget-object v13, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v10

    .line 292
    .local v10, "res":Landroid/content/res/Resources;
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 295
    .local v2, "attrs":Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    .line 296
    const/4 v13, 0x2

    if-ne v12, v13, :cond_2

    .line 299
    :cond_3
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, "nodeName":Ljava/lang/String;
    const-string/jumbo v13, "device-admin"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 301
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;

    .line 302
    const-string/jumbo v14, "Meta-data does not start with device-admin tag"

    .line 301
    invoke-direct {v13, v14}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 305
    :cond_4
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 306
    .local v6, "outerDepth":I
    :cond_5
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_9

    .line 307
    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v6, :cond_9

    .line 308
    :cond_6
    const/4 v13, 0x3

    if-eq v12, v13, :cond_5

    const/4 v13, 0x4

    if-eq v12, v13, :cond_5

    .line 311
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "uses-policies"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 313
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 314
    .local v4, "innerDepth":I
    :cond_7
    :goto_0
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_5

    .line 315
    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_5

    .line 316
    :cond_8
    const/4 v13, 0x3

    if-eq v12, v13, :cond_7

    const/4 v13, 0x4

    if-eq v12, v13, :cond_7

    .line 319
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 320
    .local v9, "policyName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 328
    .end local v4    # "innerDepth":I
    .end local v9    # "policyName":Ljava/lang/String;
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_9
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 277
    :cond_a
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x0

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 234
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 186
    iget v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 187
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 188
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 189
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 190
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 191
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 194
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    if-eqz p1, :cond_1

    .line 196
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 195
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 198
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    return-object v2
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v3, 0x0

    .line 205
    iget v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 206
    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 209
    :cond_0
    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    if-nez v1, :cond_1

    .line 210
    return-object v3

    .line 212
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 213
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getIcon()[B
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 176
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 177
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiver()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    return v0
.end method

.method public parseRequestedPermissions()V
    .locals 22

    .prologue
    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 335
    .local v12, "path":Ljava/lang/String;
    const/4 v11, 0x0

    .line 336
    .local v11, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 338
    .local v2, "assmgr":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 339
    .local v3, "assmgr":Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v3, v12}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .end local v2    # "assmgr":Landroid/content/res/AssetManager;
    move-result v5

    .line 340
    .local v5, "cookie":I
    if-eqz v5, :cond_1

    .line 341
    const-string/jumbo v19, "AndroidManifest.xml"

    move-object/from16 v0, v19

    invoke-virtual {v3, v5, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    move-object v2, v3

    .line 348
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    .end local v5    # "cookie":I
    :goto_1
    if-nez v11, :cond_2

    .line 349
    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 351
    :cond_0
    return-void

    .line 343
    .restart local v3    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v5    # "cookie":I
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_1
    :try_start_2
    const-string/jumbo v19, "ProxyDeviceAdminInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Failed adding asset path:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 345
    .end local v5    # "cookie":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 346
    .end local v3    # "assmgr":Landroid/content/res/AssetManager;
    :goto_2
    const-string/jumbo v19, "ProxyDeviceAdminInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 354
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_2
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 355
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 359
    :try_start_3
    new-instance v15, Landroid/content/res/Resources;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-direct {v15, v2, v8, v0}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 360
    .local v15, "res":Landroid/content/res/Resources;
    move-object v4, v11

    .line 363
    .local v4, "attrs":Landroid/util/AttributeSet;
    :cond_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    .local v18, "type":I
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 364
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 368
    :cond_4
    const/16 v16, 0x0

    .line 369
    .local v16, "sa":Landroid/content/res/TypedArray;
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    .line 370
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .local v10, "outerDepth":I
    :cond_5
    :goto_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 371
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v10, :cond_b

    .line 372
    :cond_6
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 376
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 377
    .local v17, "tagName":Ljava/lang/String;
    if-eqz v17, :cond_5

    const-string/jumbo v19, "uses-permission"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 379
    sget-object v19, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    .line 378
    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 385
    .local v16, "sa":Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    .line 384
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, "name":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 399
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "outerDepth":I
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_1
    move-exception v6

    .line 400
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 402
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_4
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 403
    if-eqz v2, :cond_8

    .line 404
    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    .line 409
    :cond_8
    :try_start_4
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 410
    .local v7, "elmPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v19, "ProxyDeviceAdminInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "PackageName"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    if-eqz v7, :cond_a

    .line 412
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "permission$iterator":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 414
    .local v13, "permission":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    .line 420
    .end local v7    # "elmPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "permission":Ljava/lang/String;
    .end local v14    # "permission$iterator":Ljava/util/Iterator;
    :catch_2
    move-exception v6

    .line 421
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v19, "ProxyDeviceAdminInfo"

    const-string/jumbo v20, "Failed to get ELM permissions"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 332
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a
    return-void

    .line 397
    .restart local v4    # "attrs":Landroid/util/AttributeSet;
    .restart local v10    # "outerDepth":I
    .restart local v15    # "res":Landroid/content/res/Resources;
    .restart local v18    # "type":I
    :cond_b
    if-eqz v16, :cond_7

    .line 398
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 345
    .end local v4    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "metrics":Landroid/util/DisplayMetrics;
    .end local v10    # "outerDepth":I
    .end local v15    # "res":Landroid/content/res/Resources;
    .end local v18    # "type":I
    .restart local v2    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v11    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_3
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProxyDeviceAdminInfo [mReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mLabel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    const-string/jumbo v2, ", mDescription="

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string/jumbo v2, ", mIconPath="

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string/jumbo v2, ", mRequestedPermissions="

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    iget-object v2, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string/jumbo v2, "]"

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 155
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 156
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 158
    iget v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/app/admin/ProxyDeviceAdminInfo;->mIcon:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 154
    :cond_0
    return-void
.end method
