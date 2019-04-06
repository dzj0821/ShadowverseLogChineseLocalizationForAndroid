.class public Lcom/shadowlog/shadowverselog/mypage/RinoFragment;
.super Landroid/support/v4/app/Fragment;
.source "RinoFragment.java"


# static fields
.field private static fm:Landroid/support/v4/app/Fragment;


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/shadowlog/shadowverselog/mypage/RinoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RinoFragment;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->onRinoCalc()V

    return-void
.end method

.method static synthetic access$100(Lcom/shadowlog/shadowverselog/mypage/RinoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/shadowlog/shadowverselog/mypage/RinoFragment;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->onRinoDefaultSet()V

    return-void
.end method

.method public static newInstances()Lcom/shadowlog/shadowverselog/mypage/RinoFragment;
    .locals 2

    .prologue
    .line 29
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;-><init>()V

    .line 30
    .local v1, "fm":Lcom/shadowlog/shadowverselog/mypage/RinoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    return-object v1
.end method

.method private onRinoCalc()V
    .locals 8

    .prologue
    const v7, 0x7f07010f

    const/16 v6, 0x8

    const/4 v5, 0x0

    const v4, 0x7f070110

    .line 89
    new-instance v1, Lcom/shadowlog/shadowverselog/lib/RinoCalc;

    invoke-direct {v1}, Lcom/shadowlog/shadowverselog/lib/RinoCalc;-><init>()V

    .line 90
    .local v1, "rinoc":Lcom/shadowlog/shadowverselog/lib/RinoCalc;
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->setFromLayout(Landroid/view/View;)V

    .line 91
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->clac()Landroid/util/Pair;

    move-result-object v0

    .line 93
    .local v0, "rinoRes":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v3, 0x7f070161

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    :goto_0
    invoke-virtual {v1}, Lcom/shadowlog/shadowverselog/lib/RinoCalc;->clear()V

    .line 106
    return-void

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v2, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private onRinoDefaultSet()V
    .locals 3

    .prologue
    const v2, 0x7f070110

    .line 111
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f07014d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 112
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070115

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 113
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 114
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 115
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070111

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 116
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f07012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f07013f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 117
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 118
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f07012d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f07013b

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 119
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070137

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 120
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f07012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 121
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f07012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f07011f

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 122
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f07012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070124

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 123
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 124
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f070159

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 125
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const v1, 0x7f07015d

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 126
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f070161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v1, 0x7f07010f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const-string v0, "RinoFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const-string v4, "RinoFragment"

    const-string v5, "onCreateView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const v4, 0x7f090043

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    .line 53
    invoke-direct {p0}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->onRinoDefaultSet()V

    .line 58
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v5, 0x7f07010e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 59
    .local v3, "layout_rino_commit":Landroid/widget/Button;
    new-instance v1, Lcom/shadowlog/shadowverselog/mypage/RinoFragment$1;

    invoke-direct {v1, p0}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment$1;-><init>(Lcom/shadowlog/shadowverselog/mypage/RinoFragment;)V

    .line 65
    .local v1, "clickListenerLayoutRinoCommit":Landroid/view/View$OnClickListener;
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    const v5, 0x7f07010d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 71
    .local v2, "layout_rino_clear":Landroid/widget/Button;
    new-instance v0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment$2;

    invoke-direct {v0, p0}, Lcom/shadowlog/shadowverselog/mypage/RinoFragment$2;-><init>(Lcom/shadowlog/shadowverselog/mypage/RinoFragment;)V

    .line 77
    .local v0, "clickListenerLayoutRinoClear":Landroid/view/View$OnClickListener;
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v4, p0, Lcom/shadowlog/shadowverselog/mypage/RinoFragment;->view:Landroid/view/View;

    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "RinoFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 162
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 156
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 140
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 141
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 151
    return-void
.end method
