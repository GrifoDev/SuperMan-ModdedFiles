.class public final Lcn/com/xy/sms/sdk/db/entity/a;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field private static h:Ljava/lang/String; = "tb_centernum_location_info"

.field private static i:Ljava/lang/String; = " DROP TABLE IF EXISTS tb_centernum_location_info"

.field private static j:Ljava/lang/String; = " create table  if not exists tb_centernum_location_info ( id INTEGER PRIMARY KEY, cnum TEXT not null unique, areaCode TEXT, city TEXT, checkTime long, operator TEXT )"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
