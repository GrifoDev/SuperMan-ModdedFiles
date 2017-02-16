.class public Landroid/util/secutil/CustomizedTextParser;
.super Ljava/lang/Object;
.source "CustomizedTextParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/secutil/CustomizedTextParser$CscNodeList;
    }
.end annotation


# static fields
.field private static final CSC_XML_FILE_NAME:Ljava/lang/String; = "unique_text.xml"

.field private static final CSC_XML_FILE_PATH:Ljava/lang/String; = "/system/csc/"

.field public static final FEATURE_ENABLED:Z = true

.field static final PATH_CUSTOM_INFO:Ljava/lang/String; = "CustomizedText"

.field public static final REPLACE_TAG:Ljava/lang/String; = "cst"

.field private static final TAG:Ljava/lang/String; = "CustomizedTextParser"

.field static final TAG_RULE_INFO:Ljava/lang/String; = "Rule"

.field static final TAG_SOURCE_STRING:Ljava/lang/String; = "source"

.field static final TAG_TARGET_STRING:Ljava/lang/String; = "target"

.field private static mInstance:Landroid/util/secutil/CustomizedTextParser;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;

.field private mRuleMap:Ljava/util/HashMap;
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
.method private constructor <init>()V
    .locals 6

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    const-string/jumbo v3, "persist.sys.omc_etcpath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "omcEtcPath":Ljava/lang/String;
    const-string/jumbo v2, "/system/csc/unique_text.xml"

    .line 56
    .local v2, "pathName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "unique_text.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    :cond_0
    const-string/jumbo v3, "CustomizedTextParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0, v2}, Landroid/util/secutil/CustomizedTextParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "omcEtcPath":Ljava/lang/String;
    .end local v2    # "pathName":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "CustomizedTextParser"

    const-string/jumbo v4, "feature state : true"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Landroid/util/secutil/CustomizedTextParser;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Landroid/util/secutil/CustomizedTextParser;

    invoke-direct {v0}, Landroid/util/secutil/CustomizedTextParser;-><init>()V

    sput-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    .line 73
    sget-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    invoke-direct {v0}, Landroid/util/secutil/CustomizedTextParser;->initialize()V

    .line 75
    :cond_0
    sget-object v0, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    return-object v0
.end method

.method private getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v3, 0x0

    .line 143
    if-nez p1, :cond_0

    .line 144
    return-object v3

    .line 147
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 148
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 151
    .local v2, "stringValue":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return-object v2

    .line 158
    .end local v1    # "idx":I
    .end local v2    # "stringValue":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 159
    .local v0, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method private initialize()V
    .locals 9

    .prologue
    .line 79
    const-string/jumbo v6, "CustomizedTextParser"

    const-string/jumbo v7, "Initialzed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    .line 82
    const/4 v4, 0x0

    .line 86
    .local v4, "stringSize":I
    invoke-direct {p0}, Landroid/util/secutil/CustomizedTextParser;->search()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 87
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 88
    return-void

    .line 90
    :cond_0
    invoke-direct {p0, v1}, Landroid/util/secutil/CustomizedTextParser;->searchList(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 91
    .local v2, "nodeList":Lorg/w3c/dom/NodeList;
    if-nez v2, :cond_1

    .line 92
    const-string/jumbo v6, "CustomizedTextParser"

    const-string/jumbo v7, "createCscRuleMap:No Rule info"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 97
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    .line 102
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "source"

    invoke-direct {p0, v6, v7}, Landroid/util/secutil/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 104
    .local v3, "srcTemp":Lorg/w3c/dom/Node;
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    const-string/jumbo v7, "target"

    invoke-direct {p0, v6, v7}, Landroid/util/secutil/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 106
    .local v5, "targetTemp":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    .line 107
    iget-object v6, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-direct {p0, v3}, Landroid/util/secutil/CustomizedTextParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5}, Landroid/util/secutil/CustomizedTextParser;->getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_2
    const-string/jumbo v6, "CustomizedTextParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createCscRuleMap:src or target is null. srcTemp ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",target="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v3    # "srcTemp":Lorg/w3c/dom/Node;
    .end local v5    # "targetTemp":Lorg/w3c/dom/Node;
    :cond_3
    const-string/jumbo v6, "CustomizedTextParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Initialzed: Finished. size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/util/secutil/CustomizedTextParser;->mInstance:Landroid/util/secutil/CustomizedTextParser;

    iget-object v8, v8, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method private search()Lorg/w3c/dom/Node;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 163
    iget-object v0, p0, Landroid/util/secutil/CustomizedTextParser;->mRoot:Lorg/w3c/dom/Node;

    .line 164
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "CustomizedText"

    const-string/jumbo v4, "."

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "token":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 170
    return-object v5

    .line 172
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/util/secutil/CustomizedTextParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 175
    .end local v1    # "token":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 179
    if-nez p1, :cond_0

    .line 180
    return-object v5

    .line 182
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 184
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 185
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 187
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 188
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 190
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 191
    return-object v0

    .line 187
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    return-object v5
.end method

.method private searchList(Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 9
    .param p1, "parent"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v8, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 201
    return-object v8

    .line 204
    :cond_0
    :try_start_0
    new-instance v4, Landroid/util/secutil/CustomizedTextParser$CscNodeList;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/util/secutil/CustomizedTextParser$CscNodeList;-><init>(Landroid/util/secutil/CustomizedTextParser$CscNodeList;)V

    .line 205
    .local v4, "list":Landroid/util/secutil/CustomizedTextParser$CscNodeList;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 207
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 208
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 210
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 211
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 213
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "Rule"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    :try_start_1
    invoke-virtual {v4, v0}, Landroid/util/secutil/CustomizedTextParser$CscNodeList;->appendChild(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 223
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "list":Landroid/util/secutil/CustomizedTextParser$CscNodeList;
    .end local v5    # "n":I
    :catch_1
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/lang/Exception;
    return-object v8

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "children":Lorg/w3c/dom/NodeList;
    .restart local v4    # "list":Landroid/util/secutil/CustomizedTextParser$CscNodeList;
    :cond_2
    return-object v4
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 132
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 133
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v2, "fe":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mDoc:Lorg/w3c/dom/Document;

    .line 136
    iget-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mRoot:Lorg/w3c/dom/Node;

    .line 130
    :goto_0
    return-void

    .line 138
    :cond_0
    const-string/jumbo v3, "CustomizedTextParser"

    const-string/jumbo v4, "update : XML file doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCustomizedText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v1, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 117
    :cond_0
    const-string/jumbo v1, "CustomizedTextParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCustomizedText Rule is empty. mRuleMap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object p1

    .line 121
    :cond_1
    iget-object v1, p0, Landroid/util/secutil/CustomizedTextParser;->mRuleMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, "replaceText":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 123
    const-string/jumbo v1, "CustomizedTextParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "convertString replaceText is null. preString= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-object p1

    .line 126
    :cond_2
    return-object v0
.end method
