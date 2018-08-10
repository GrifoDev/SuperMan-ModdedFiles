.class public final Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileIdTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final KEYWORD_GROUP_BY:Ljava/lang/String; = "GROUP BY"

.field public static final MCCMNC:Ljava/lang/String; = "mccmnc"

.field public static final MNO_NAME:Ljava/lang/String; = "mnoname"

.field public static final NAME:Ljava/lang/String; = "profile_name"

.field public static final OP_CODE_END:Ljava/lang/String; = "opcode_end"

.field public static final OP_CODE_START:Ljava/lang/String; = "opcode_start"

.field public static final PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final SALES_CODE:Ljava/lang/String; = "salescode"

.field public static final TABLE_NAME:Ljava/lang/String; = "match_profile_id"

.field public static final _ID:Ljava/lang/String; = "id"

.field private static final mTableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "content://com.sec.ims.settings/match_profile_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "INTEGER PRIMARY KEY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "profile_id"

    const-string/jumbo v2, "INT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "profile_name"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "mccmnc"

    const-string/jumbo v2, "TEXT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "opcode_start"

    const-string/jumbo v2, "INT DEFAULT -1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    const-string/jumbo v1, "opcode_end"

    const-string/jumbo v2, "INT DEFAULT -1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTableMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/ims/settings/ImsSettings$ProfileIdTable;->mTableMap:Ljava/util/HashMap;

    return-object v0
.end method
