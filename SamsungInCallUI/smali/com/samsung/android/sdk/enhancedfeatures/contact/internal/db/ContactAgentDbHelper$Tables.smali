.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/ContactAgentDbHelper$Tables;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/ContactAgentDbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tables"
.end annotation


# static fields
.field public static final CREATE_CONTACT_TABLE:Ljava/lang/String; = "CREATE TABLE contacts ( contacts_id INTEGER, conatct_number TEXT NOT NULL, conatct_display_number TEXT, contacts_name TEXT, contacts_version INTEGER, contacts_starred INTEGER NOT NULL DEFAULT 0, UNIQUE (contacts_id) ON CONFLICT REPLACE )"

.field public static final CREATE_PROFILE_TABLE:Ljava/lang/String; = "CREATE TABLE profile ( _id  INTEGER,data_version  INTEGER, mimetype TEXT, data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, data6 TEXT, data7 TEXT, data8 TEXT, data9 TEXT, data10 TEXT, data11 TEXT, data12 TEXT, data13 TEXT, data14 TEXT, data15 TEXT, UNIQUE (_id ) ON CONFLICT REPLACE)"

.field public static final CREATE_SYNC_DATA_TABLE:Ljava/lang/String; = "CREATE TABLE sync_data ( _id INTEGER PRIMARY KEY, contact_id INTEGER, mimetype INTEGER, timestamp LONG NOT NULL DEFAULT 0, data1 TEXT, data2 TEXT, data3 TEXT, data4 TEXT, data5 TEXT, data6 TEXT, data7 TEXT, data8 TEXT, data9 TEXT, data10 TEXT, data11 TEXT, data12 TEXT, data13 TEXT, data14 TEXT, data15 TEXT) "

.field public static final CREATE_SYNC_RAW_CONTACTS_TABLE:Ljava/lang/String; = "CREATE TABLE sync_raw_contacts(_id INTEGER PRIMARY KEY, raw_contact_number TEXT NOT NULL, raw_contact_duid TEXT NOT NULL) "

.field public static final TABLE_CONTACT_IMAGES:Ljava/lang/String; = "contact_images"

.field public static final TABLE_NAME_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final TABLE_NAME_PROFILE:Ljava/lang/String; = "profile"

.field public static final TABLE_SYNC_DATA:Ljava/lang/String; = "sync_data"

.field public static final TABLE_SYNC_RAW_CONTACTS:Ljava/lang/String; = "sync_raw_contacts"
