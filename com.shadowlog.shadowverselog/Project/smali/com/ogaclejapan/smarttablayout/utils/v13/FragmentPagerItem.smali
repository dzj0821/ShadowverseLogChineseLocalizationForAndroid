.class public Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;
.super Lcom/ogaclejapan/smarttablayout/utils/PagerItem;
.source "FragmentPagerItem.java"


# static fields
.field private static final KEY_POSITION:Ljava/lang/String; = "FragmentPagerItem:Position"

.field private static final TAG:Ljava/lang/String; = "FragmentPagerItem"


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final className:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/CharSequence;FLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "width"    # F
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/PagerItem;-><init>(Ljava/lang/CharSequence;F)V

    .line 34
    iput-object p3, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->className:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->args:Landroid/os/Bundle;

    .line 36
    return-void
.end method

.method public static getPosition(Landroid/os/Bundle;)I
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->hasPosition(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FragmentPagerItem:Position"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPosition(Landroid/os/Bundle;)Z
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    const-string v0, "FragmentPagerItem:Position"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of(Ljava/lang/CharSequence;FLjava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "width"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "F",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;
    .locals 2
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "width"    # F
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "F",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    new-instance v0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;-><init>(Ljava/lang/CharSequence;FLjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static of(Ljava/lang/CharSequence;Ljava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;)",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;FLjava/lang/Class;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/CharSequence;Ljava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;
    .locals 1
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Fragment;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1, p2}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->of(Ljava/lang/CharSequence;FLjava/lang/Class;Landroid/os/Bundle;)Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;

    move-result-object v0

    return-object v0
.end method

.method static setPosition(Landroid/os/Bundle;I)V
    .locals 1
    .param p0, "args"    # Landroid/os/Bundle;
    .param p1, "position"    # I

    .prologue
    .line 66
    const-string v0, "FragmentPagerItem:Position"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;I)Landroid/app/Fragment;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->args:Landroid/os/Bundle;

    invoke-static {v0, p2}, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->setPosition(Landroid/os/Bundle;I)V

    .line 71
    iget-object v0, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->className:Ljava/lang/String;

    iget-object v1, p0, Lcom/ogaclejapan/smarttablayout/utils/v13/FragmentPagerItem;->args:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method
