.class public Ljava/util/prefs/PreferenceChangeEvent;
.super Ljava/util/EventObject;
.source "PreferenceChangeEvent.java"


# static fields
.field private static final serialVersionUID:J = 0xb03e03d54d2278fL


# instance fields
.field private key:Ljava/lang/String;

.field private newValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/prefs/Preferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    iput-object p3, p0, Ljava/util/prefs/PreferenceChangeEvent;->newValue:Ljava/lang/String;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/NotSerializableException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    const-string/jumbo v1, "Not serializable."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/prefs/PreferenceChangeEvent;->newValue:Ljava/lang/String;

    return-object v0
.end method

.method public getNode()Ljava/util/prefs/Preferences;
    .locals 1

    invoke-virtual {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/prefs/Preferences;

    return-object v0
.end method
