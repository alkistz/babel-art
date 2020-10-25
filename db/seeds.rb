# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning up the database!"
Song.destroy_all
User.destroy_all
puts "Databse clean"



users = User.create([
  {
    email: 'alkiviadistzaras@yahoo.gr',
    password: 'xaxaxa123'
  },

  {
    email: 'allos@yahoo.gr',
    password: '123456789'
  }

])


songs = Song.create([
  {
    title: 'Tigri',
    artist_name: "Psarantonis",
    album_title:'O Ksupolitos Prigkipas',
    lyrics_original:
      "Έχω μια τίγρη μέσα μου, άγρια λιμασμένη
      π' όλο με περιμένει
      κι όλο την καρτερώ,
      τηνε μισώ και με μισεί, θέλει να με σκοτώσει,
      μα ελπίζω να φιλιώσει
      καιρό με τον καιρό.

      Έχει τα δόντια στην καρδιά, τα νύχια στο μυαλό μου
      κι εγώ για το καλό μου
      για κείνη πολεμώ
      κι όλου του κόσμου τα καλά με κάνει να μισήσω,
      για να της τραγουδήσω τον πιο βαρύ καημό.

      Όρη, λαγκάδια και γκρεμνά με σπρώχνει να περάσω,
      για να την αγκαλιάσω
      στον πιο τρελό χορό,
      κι όταν τις κρύες τις βραδιές θυμάται τα κλουβιά της,
      μου δίνει την προβιά της
      για να τηνε φορώ.

      Καμιά φορά απ' το πιοτό πέφτομε μεθυσμένοι,
      σχεδόν αγαπημένοι,
      καθείς να κοιμηθεί
      και μοιάζει ετούτη η σιωπή με λίγο πριν τη μπόρα,
      σαν τη στερνή την ώρα
      που θα επιτεθεί",
    lyrics_translated:
      "There is a tiger inside of me, furiously raging
      and he's always waiting
      and I'm always waiting
      I hate him and he hates me, he wants to kill me,
      but I hope we'll reconcile
      as time goes by.

      His teeth on my heart, his nails on my mind
      and for my own good
      I'm fighting for him
      everything good in the world he makes me hate,
      because for him, I have to sing my deepest sorrow.

      He makes me cross mountains, valleys, and gorges,
      in order to embrace
      in a wild dance with him,
      and when during the cold nights, he remembers his cages,
      he hands me his sheepskin
      to clothe my self with.

      Sometimes we put drunkenly,
      almost lovingly,
      ourselves to sleep
      and this silence seems like the calm before the storm,
      like the final time
      that he will attack.",
    link: 'https://www.youtube.com/embed/heWLnEDzkkE',
    youtube_key: 'heWLnEDzkkE',
    user_id: 1
  },

  {
    title: 'Mia mana pou he ena gio',
    artist_name: "Traditional",
    album_title:'Traditional',
    lyrics_original:
      "Μια μάνα που 'χε ένα γιο,
      μα ήταν λωλοπαρμένη
      δεν είχε την υπομονή
      για να το αναθρέψει,
      και στην ποδιά της το 'βαλε,
      πάει να το ρεματίσει.

      Στο δρόμο που επήγαινε,
      στη στράτα που πηγαίνει
      μια πέρδικα την απαντά,
      μια πέρδικα της λέγει:

      Μωρή σκύλα, μωρή άνομη,
      μωρή μαριολεμένη,
      εγώ έχω δεκαοχτώ πουλιά,
      πάσχω να τ' αναθρέψω
      και συ έκανες χρυσόν υγιό,
      πας να τον ρεματίσεις;

      Και στην ποδιά της το 'βαλε,
      στο σπίτι της πηγαίνει
      το έβαλε στην κούνια του,
      το τραγουδά και λέει:

      Γιε μου σαν γίνεις κυνηγός,
      σαν γίνεις παλληκάρι,
      σαν ανταμώσεις πέρδικα,
      να μην τήνε σκοτώσεις.
      Η πέρδικα είναι η μάνα σου
      κι εγώ η μητριά σου.",
    lyrics_translated:
      "A mother had a son,
      but was distraught
      she did not have the patience
      to raise him
      she put him in her skirt
      and went to kill him.

      While she was walking,
      down the path she saw
      a partridge felt for her
      a partridge told her:

      You bitch, you lawless,
      you deranged woman!
      I have eighteen birds,
      I'm suffering to raise them
      you birthed a golden son
      and you throw him to the gorge?

      She put him in her skirt
      and went back home again
      she put him in the crib,
      she sang and told him:

      My son, when you'll be a hunter,
      When you'll become stalwart
      If you ever meet a partridge,
      thou shall not kill her.
      The partridge is your mother
      and I am your stepmother.",
    link: 'https://www.youtube.com/embed/1A25QCmB0C8',
    youtube_key: '1A25QCmB0C8',
    user_id: 1
  },

  {
    title: 'To Aroma',
    artist_name: "Traditional",
    album_title:'Traditional',
    lyrics_original:
      "Ήθελα να `μουν άρωμα
      που βάνεις στα μαλλιά σου
      σε κάθε σου αναπνοή
      να μπαίνω στη καρδιά σου.

      Ολου του κόσμου τα καλά
      να τα `χα δεν τα θέλω
      ας έχει ο κόσμος τα καλά
      κι εγώ αυτόν που θέλω.

      Όσα άστρα έχει ο ουρανός
      ο ήλιος, το φεγγάρι
      έτσι κι εγώ θα σ’ αγαπώ
      μέχρι να μπω στον Άδη.

      Τον όρκο που μου έδωσες
      θυμήσου ένα βράδυ
      μικρή μου, να με αγαπάς
      μέχρι να μπω στον Άδη.

      Για σένα κλαίω και πονώ
      και βαριαναστενάζω
      μα τέτοιο πόνο με χαρές
      χιλιάδες δεν αλλάζω.

      Ήθελα να `μουν άρωμα
      που βάνεις στα μαλλιά σου
      σε κάθε σου αναπνοή
      να μπαίνω στη καρδιά σου.",
    lyrics_translated:
      "I'd want to be the perfume
      you put on your hair
      with every breath you take
      to enter your heart.

      All the wealth of the world
      to have I wouldn't want
      let the world have the wealth
      and I the one I desire.

      As many stars has the sky
      the sun and the moon
      so much I'll love you
      until I enter hades.

      The oath you took on me
      remember that night
      my little, to love me
      until I enter hades.

      For you I pain and cry
      and sigh in sadness
      but such a pain with a thousand
      of joys I don't exchange.

      I'd want to be the perfume
      you put on your hair
      with every breath you take
      to enter your heart.",
    link: 'https://www.youtube.com/embed/Px1aQqIxYQA',
    youtube_key: 'Px1aQqIxYQA',
    user_id: 1
  },

  {
    title: 'Mi Hamilonis ta Ftera',
    artist_name: "Giorgis Xylouris a.k.a. Psarogiorgis",
    album_title:'Oso Ki an Derni O Anemos',
    lyrics_original:
      "Σαν τη λογιάζεις τη δουλειά
      όρτσα και μη φοβάσαι
      αμόλα τη νιότη σου
      και μην τηνε λυπάσαι.

      Μη χαμηλώνεις τα φτερά
      κόντρα στη μπόρα πέτα
      πέτρα να κάμεις τη καρδιά
      και πιάσου απ' την πέτρα.",
    lyrics_translated:
      "If you set your mind on something
      charge and fear not
      release your youth
      and spare it not.

      Don’t lower your wings
      fly against the storm
      turn your heart into a stone
      and hold yourself on that very stone.",
    link: 'https://www.youtube.com/embed/TCzk_ue_Q0c',
    youtube_key: 'TCzk_ue_Q0c',
    user_id: 1
  }

])






