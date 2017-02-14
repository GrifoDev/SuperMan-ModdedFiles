.class Lcom/android/launcher2/GenXml;
.super Ljava/lang/Object;
.source "XmlBackup.java"


# instance fields
.field private final mSbuf:Ljava/lang/StringBuffer;

.field private final strLineFeed:[Ljava/lang/String;

.field private final strTab:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "    "

    aput-object v1, v0, v4

    const-string v1, "        "

    aput-object v1, v0, v5

    const-string v1, "            "

    aput-object v1, v0, v6

    const-string v1, "                "

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "                    "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "                        "

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/GenXml;->strTab:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "\n"

    aput-object v1, v0, v4

    const-string v1, "\n\n"

    aput-object v1, v0, v5

    const-string v1, "\n\n\n"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/launcher2/GenXml;->strLineFeed:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public addApacheLicense()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "\n<!--\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "Copyright (C) 2009 The Android Open Source Project\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "Licensed under the Apache License, Version 2.0 (the \"License\");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "you may not use this file except in compliance with the License.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "You may obtain a copy of the License at\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "  http://www.apache.org/licenses/LICENSE-2.0\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "Unless required by applicable law or agreed to in writing, software\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "distributed under the License is distributed on an \"AS IS\" BASIS,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "See the License for the specific language governing permissions and\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "limitations under the License.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    const-string v1, "-->\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strTab:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strLineFeed:[Ljava/lang/String;

    aget-object v1, v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addComment(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strTab:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "<!-- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strLineFeed:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addElement(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strTab:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strLineFeed:[Ljava/lang/String;

    aget-object v1, v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public addStrBufData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endElement(Ljava/lang/String;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strTab:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/GenXml;->strLineFeed:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/GenXml;->mSbuf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
