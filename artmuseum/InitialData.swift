//
//  InitialData.swift
//  artmuseum
//
//  Copyright © 2017 Westley Rotolo. All rights reserved.
//
//ABC
import Foundation
class InitialData{
    var artWorks: [Artwork] = [Artwork]()
    init() {
         //init(_ title: String, _ author: String, _ text: String, _ id: String, _ year: String, _ room: String)
        let artWork1: Artwork = Artwork(
                "Primavera ",
                "Sandro Botticelli",
                "Primavera is a large panel painting in tempera paint by the Italian Renaissance painter Sandro Botticelli made in the late 1470s or early 1480s. It has been described as \"one of the most written about, and most controversial paintings in the world\", and also \"one of the most popular paintings in Western art\". The history of the painting is not certainly known, though it seems to have been commissioned by one of the Medici family.\n\nComposition\nThe painting depicts a group of figures from classical mythology in a garden: particularly it features six female figures and two male, along with a cupid, in an orange grove. The typical identification of the figures is, from right to left:\nZephyrus, the biting wind of March, kidnaps and possesses the nymph Chloris, whom he later marries and transforms into a deity; she becomes the goddess of Spring, eternal bearer of life, and is scattering roses on the ground.\nIn the centre and somewhat set back from the other figures stands Venus, a red-draped woman in blue. Like the flower-gatherer, she returns the viewer's gaze. The trees behind her form a broken arch to draw the eye.\nTo the right of centre of the painting, Flora, a flower-crowned female figure stands in a floral-patterned dress scattering flowers that are piled up in a folds of her dress. She has a slight smile on her face while stepping towards the viewer. The colours of the flowers on her dress and in her hand are pink, red and white.\nTo the right of Flora a woman in diaphanous white is being seized from above by Zephyr, a winged male. His cheeks are puffed, his expression intent, and his unnatural complexion separates him from the rest of the figures. The trees around him blow in the direction of his entry, as does the skirt of the woman he is seizing. The drapery of her companion blows in the other direction.\nOn the left of the painting the Three Graces, a group of three females also in diaphanous white, join hands in a dance, while to the left of them Mercury, a red-draped youth with a sword and a helmet, raises his wooden rod towards some wispy gray clouds. Two of the women wear prominent necklaces. The flying cherub has an arrow ready to shoot, aimed at the dancing girls.\nThe pastoral scenery is elaborate. There are 500 identified plant species depicted in the painting, with about 190 different flowers, of which at least 130 can be specifically identified.\n\nMeaning\nVarious interpretations of the figures have been set forth, but it is generally agreed that at least at one level the painting is \"an elaborate mythological allegory of the burgeoning fertility of the world.\"Venus presides over the garden - an orange grove (a Medici symbol). She stands in front of the dark leaves of a myrtle bush. According to Hesiod, Venus had been born of the sea after the semen of Uranus had fallen upon the waters. Coming ashore in a shell she had clothed her nakedness in myrtle, and so the plant became sacred to her. The Graces accompanying her (and targeted by Cupid) bear jewels in the colors of the Medici family, while Mercury's caduceus keeps the garden safe from threatening clouds.",
                "Botticelli-primavera",
                "1470-1480",
                "Sala 1")
        
        let artWork2: Artwork = Artwork(
            "The Birth of Venus",
            "Sandro Botticelli",
            "The Birth of Venus is a painting by Sandro Botticelli probably made in the mid 1480s. It depicts the goddess Venus arriving at the shore after her birth, when she had emerged from the sea fully-grown.\nThe Birth of Venus has always been considered the perfect idea of female beauty in art, just as David is considered a canon of male beauty. Since both works are preserved in Florence, the Florentines boast of having the canons of artistic beauty within the city walls.\n\nDescription and subject\nIn the centre the newly-born goddess Venus stands nude in a giant scallop shell. At the left the wind god Zephyr blows at her, with the wind shown by lines radiating from his mouth. He is in the air, and carries a young female, who is also blowing, but less forcefully. Both have wings. Their joint efforts are blowing Venus towards the shore, and blowing the hair and clothes of the other figures to the right.\nAt the right a female figure who may be floating slightly above the ground holds out a rich cloak or dress to cover Venus when she reaches the shore, as she is about to do. She is one of the three Horae or Hours, Greek minor goddesses of the seasons and of other divisions of time, and attendants of Venus. The floral decoration of her dress suggests she is the Hora of Spring.\nAlternative identifications for the two secondary female figures involve those also found in the Primavera; the nymph held by Zephyr may be Chloris, a flower nymph he married in some versions of her story, and the figure on land may be Flora. Flora is generally the Roman equivalent of the Greek Chloris; in the Primavera Chloris is transformed into the figure of Flora next to her, following Ovid's Fasti, but it is hard to see that such a transformation is envisaged here. However, the roses blown along with the two flying figures would be appropriate for Chloris.\nThe subject is not strictly the \"Birth of Venus\", a title only given the painting in the nineteenth century, but the next scene in her story, where she arrives on land, blown by the wind. The land probably represents either Cythera or Cyprus, both Mediterranean islands regarded by the Greeks as territories of Venus.\n\nStyle\nVenus' body is anatomically improbable, with elongated neck and torso. Her pose is impossible: although she stands in a classical contrapposto stance, her weight is shifted too far over the left leg for the pose to be held. The proportions and poses of the winds to the left do not quite make sense, and none of the figures cast shadows. The painting depicts the world of the imagination rather than being very concerned with realistic depiction.\nBotticelli's art was never fully committed to naturalism; Botticelli seldom gave weight and volume to his figures and rarely used a deep perspectival space. Botticelli never painted landscape backgrounds with great detail or realism, but this is especially the case here. The laurel trees and the grass below them are green with gold highlights, most of the waves regular patterns, and the landscape seems out of scale with the figures. The clumps of bulrushes in the left foreground are out of place here, as they come from a freshwater species.\n\nInterpretations\nThe artwork conceals Neoplatonic allegory based on the concept of love as the driving force of nature. Certainly, the goddess's nakedness did not represent a pagan exaltation of feminine beauty for contemporaries, but rather the concept of Humanitas, understood as the spiritual beauty that represents the purity, simplicity and nobility of the soul.\nThe laurel trees at right and laurel wreath worn by the Hora are punning references to the name \"Lorenzo\", though it is uncertain whether Lorenzo il Magnifico, the effective ruler of Florence, or his young cousin Lorenzo di Pierfrancesco is meant. In the same way the flowers in the air around Zephyr and on the textiles worn and carried by the Hora evoke the name of Florence.",
            "Sandro_Botticelli_-_La_nascita_di_Venere",
            "1480",
            "Sala 1")
        
        let artWork3: Artwork = Artwork(
            "Annunciation",
            "Leonardo da Vinci",
            "Annunciation, by the Italian Renaissance artists Leonardo da Vinci and Andrea del Verrocchio, dates from circa 1472–1475 and is housed in the Uffizi gallery of Florence, Italy. The subject matter is drawn from Luke 1.26-39 and depicts the angel Gabriel, sent by God to announce to a virgin, Mary, that she would miraculously conceive and give birth to a son, to be named Jesus, and to be called \"the Son of God\" whose reign would never end.\n\nDescription\nThe angel holds a Madonna lily, a symbol of Mary's virginity and of the city of Florence. It is supposed that Leonardo originally copied the wings from those of a bird in flight, but they have since been lengthened by a later artist. The marble table, in front of the Virgin, probably quotes the tomb of Piero and Giovanni de' Medici in the Basilica of San Lorenzo, Florence, which Verrocchio had sculpted during this same period. Some immature hesitancies are usually noted, especially the Virgin's ambiguous spatial relation to the desk and the marble on which it rests.",
            "Annunciation_(Leonardo)",
            "1472-1475",
            "Sala 1")
        
        let artWork4: Artwork = Artwork(
            "Venus of Urbino",
            "Tiziano",
            "The Venus of Urbino is a 1538 oil painting by the Italian master Titian. It depicts a nude young woman, identified with the goddess Venus, reclining on a couch or bed in the sumptuous surroundings of a Renaissance palace. The figure's pose is based on Giorgione's Sleeping Venus (c. 1510), which Titian completed. In this depiction, Titian has domesticated Venus by moving her to an indoor setting, engaging her with the viewer, and making her sensuality explicit. Devoid as it is of any classical or allegorical trappings – Venus displays none of the attributes of the goddess she is supposed to represent – the painting is sensual, perhaps unapologetically erotic.\n\nDescription and history\nThe Venus stares straight at the viewer, unconcerned with her nudity. In her right hand she holds a posy of roses whilst she holds her other hand over her genitals. In the near background is a dog, often a symbol of fidelity.\nThe painting was commissioned by Guidobaldo II della Rovere, the Duke of Urbino, possibly to celebrate his 1534 marriage. It would originally have decorated a cassone, a chest traditionally given in Italy as a wedding present. The maids in the background are shown rummaging through a similar chest, apparently in search of Venus's clothes.\nThe model for the painting has been assumed as Angela del Moro, a highly paid courtesan in Venice and a known dining companion of Titian.\nTitian contrasts the straight lines of the architecture with the curves of the female form, and the screen behind Venus bisects the painting, a large-scale division that is mitigated by unifying elements such as the use of colour and the floral patterns of the couch, cassoni, and background tapestries.",
            "Venere_di_Urbino",
            "1538",
            "Sala 1")
        
        let artWork5: Artwork = Artwork(
            "Madonna of the Goldfinch",
            "Raffaello",
            "The Madonna del cardellino or Madonna of the Goldfinch is a painting by the Italian renaissance artist Raphael, from c. 1505-1506. A 10-year restoration process was completed in 2008, after which the painting was returned to its home at the Uffizi in Florence. During the restoration, an antique copy replaced the painting in the gallery.\n\nDescription\nIn this painting, as in most of the Madonnas of his Florentine period, Raphael arranged the three figures - Mary, Christ and the young John the Baptist - to fit into a geometrical design. Though the positions of the three bodies are natural, together they form an almost regular triangle. The Madonna is shown young and beautiful, as with Raphael’s various other Madonnas. She is also clothed in red and blue, also typical, for red signifies the passion of Christ and blue was used to signify the church. Christ and John are still very young, only babies. John holds a goldfinch in his hand, and Christ is reaching out to touch it. The background is one typical of Raphael. The natural setting is diverse and yet all calmly frames the central subject taking place.\n\nHistory and restoration\nThe Madonna was a wedding gift from Raphael to his friend Lorenzo Nasi. On November 17, 1548 Nasi's house was destroyed by an earthquake and the painting broke into seventeen pieces. It was immediately taken to be salvaged, and was hastily put back together, though the seams were quite visible. In 2002, George Bonsanti of the Precious Stones organization gave the task of restoration to Patrizia Riitano. During the six-year process that followed, her team worked to remove the years of grime that had degraded the painting's color, and to fix the damage done by the earthquake long ago, until the original by Raphael finally shone through. The restoration was completed in 2008, and the painting was put on display in Uffizi.\n\nMeaning\nIn Madonna Del Cardellino, the goldfinch represents Christ’s crucifixion. The reason for its association comes from the legend that its red spot was born at the time of the crucifixion. It flew down over the head of Christ and was taking a thorn from His crown, when it was splashed with the drop of His blood. The book in Mary’s hand reads Sedes Sapientiae or The Throne of Wisdom. This term usually is applied to images in which Mary is seated upon a throne, with Jesus on her lap, but in this case, the inscription implies the rock on which Mary sits is her natural throne.",
            "Raffaello_Sanzio_-_Madonna_del_Cardellino",
            "1505-1506",
            "Sala 1")
        
        let artWork6: Artwork = Artwork(
            "Bacchus",
            "Caravaggio",
            "Bacchus (c. 1595) is a painting by Italian Baroque master Michelangelo Merisi da Caravaggio.\nThe painting shows a youthful Bacchus reclining in classical fashion with grapes and vine leaves in his hair, fingering the drawstring of his loosely draped robe. On a stone table in front of him is a bowl of fruit and a large carafe of red wine; with his left hand he holds out to the viewer a shallow goblet of the same wine, apparently inviting the viewer to join him.\nBacchus was painted shortly after Caravaggio joined the household of his first important patron, Cardinal Del Monte, and reflects the humanist interests of the Cardinal's educated circle. It was not in the cardinal's collection at his death, and may have been a gift to the Grand Duke in Florence. It was unknown until 1913. When it was found in a storeroom of the Uffizi Galleries, it had never been catalogued or framed.\nBacchus' offering of the wine with his left hand, despite the obvious effort this is causing the model, has led to speculation that Caravaggio used a mirror to assist himself while working from life, doing away with the need for drawing. In other words, what appears to us as the boy's left hand was actually his right. The model for Bacchus might have been Caravaggio's friend Mario Minniti, whom he had used before in The Musicians.\nIt was discovered upon closer investigation that Caravaggio included a miniature self portrait of himself painting the subject in the reflection of the offered glass.",
            "Caravaggio_-_Bacco_adolescente",
            "1595",
            "Sala 1")
        
        let artWork7: Artwork = Artwork(
            "Santa Trinita Maestà",
            "Cimabue",
            "The Santa Trinita Maestà is a painting by the Italian medieval artist Cimabue, dating to c. 1290–1300. It represents the Madonna on the throne with the Child, surrounded by eight angels, and presents at the bottom, four prophets in half bust. It is tempered on a table and measures 385x223 cm.\n\nHistory\nOriginally painted for the church of Santa Trinita, Florence, where it remained until 1471, it is now housed in the Uffizi Gallery of Florence, Italy.\nA Renaissance painting created in Florence, it was replaced with Trinity by Alesso Baldovinetti (1471), and moved into a side chapel of the same church, and later the monastery infirmary.\nVasari assigned this painting to Cimabue, and the attribution has been confirmed by most modern scholars, although the dating remains disputed. In addition, the claim that the artwork was commissioned by the Vallumbrosans, of which there is no evidence, has also been debated.\n\nDescription\nA striking feature of the painting is the wide opening at the base of the throne which depicts arches framing Jeremiah, Abraham, David, and Isaiah in half bust view. Below, at the sides of the throne, Jeremiah and Isaiah gaze up towards the child as if to confirm the prophecies written in their documents on the miraculous virgin birth of Jesus.\nAbraham and David in the center below the throne recall that Jesus descended from their lineage. The Christian meaning of the work, well-fitted to a church dedicated to the Holy Trinity, is thus focused on the threefold nature of the Virgin who is surrounded by the Holy Spirit.",
            "Cimabue_Trinita_Madonna",
            "1290-1300",
            "Sala 1")
        
        let artWork8: Artwork = Artwork(
            "Madonna with Child",
            "Filippo Lippi",
            "Madonna with Child is a painting by the Italian Renaissance artist Filippo Lippi, probably executed between 1450 and 1465.\nThe Madonna is traditionally identified with Lucrezia Buti, as for most of Fra Filippo's Madonnas.\nAnother possible interpretation of the painting is that the unusual size is perhaps connected to a personal event, such as the birth of his son, Filippino (1457): however, if Filippino was chosen as model for the angel in the foreground, the panel could be from a date as late as around 1465.\n\nDescription\nThe group of Madonna and Child is, unusually for the period, placed in front of an open window beyond which is a landscape inspired to Flemish painting. The Madonna sits on a chair, at the window of a house located on a hilltop, which offers a view of an elaborate landscape of “plains, distant mountains, a city and a bay”. Her eyes are pointed down and her hands are folded in prayers before child Jesus, who is held up to her by two angels. She is wearing an elaborate coiffure with a soft veil and pearls. Furthermore, as in many Renaissance paintings, the Madonna’s hair is shaved farther back because, the forehead was an object of special beauty.\nThe angel on the right is one of the most curious parts of the painting: he is looking at the viewer with a \"roguish smile, more expressive of mischief than of seraphic perfection\". His pose does not resemble that of an angel, and he does not seem to be playing his part, rather he seems to be the real child.\n\nTechnique\nThe large window placed behind the Madonna helps reducing the gap between the viewer and the figures, which are also very close to the plane to assist in making the viewer feel part of the painting.\nFra Filippo’s fresco background from his time in Prato influences this painting from the coloring and the inattention to details. The colors are applied in bold strokes, that almost look independent from each other, which shows that Fra Filippo was \"taking very little trouble to ensure harmonious blending of the various tints\", which is a characteristics of frescoes. The composition of the painting is of pyramidal shape, and the foreground and background are arranged in a way that suggest that Fra Filippo was also influenced by the methods of Donatello’s school.\nFrom his earlier paintings, it is evident that Fra Filippo was influenced by Masaccio. However, Masaccio’s chiaroscuro has disappeared in the Uffizi Madonna, and figures are now illuminated by a soft glow with harsh shadows. This greatly reduces the sense of volume that was peculiar in Fra Filippo’s earlier paintings.",
            "Fra_Filippo_Lippi_-_Madonna_with_the_Child_and_two_Angels",
            "1450-1465",
            "Sala 1")
        
        let artWork9: Artwork = Artwork(
            "Adoration of the Magi",
            "Sandro Botticelli",
            "The Adoration of the Magi is a painting by the Italian Renaissance master Sandro Botticelli, dating from 1475 or 1476, early in his career. The work is on display at the Uffizi in Florence. The painting was commissioned by Gaspare of Zanobi del Lama, a member of the Arte del Cambio Florentine and courtier of the Medici family, for his funeral chapel in Santa Maria Novella. Botticelli was commissioned to paint at least seven versions of The Adoration of the Magi.\n\nInserted Medici portraits\nIn the scene numerous characters are present, among which are several members of the Medici family: Cosimo de' Medici (the Magus kneeling in front of the Virgin), his sons Piero (the second Magus kneeling in the centre with the red mantle) and Giovanni (the third Magus), and his grandsons Giuliano and Lorenzo. The three Medici portrayed as Magi were all dead at the time the picture was painted, and Florence was effectively ruled by Lorenzo.\nAlso Gaspare himself is said to be included in the painting, as the old man on the right with white hair and an alight blue robe looking and pointing at the observer. Furthermore, also Botticelli is alleged to have made a self-portrait as the blonde man with yellow mantle on the far right.",
            "Botticelli_-_Adoration_of_the_Magi",
            "1475-1476",
            "Sala 2")
        
        let artWork10: Artwork = Artwork(
            "The Duke and Duchess of Urbino",
            "Piero della Francesca",
            "The double portrait of the Dukes of Urbino, also known as the Diptych of Federico da Montefeltro and Battista Sforza is a diptych, oil on panel (47 × 33 cm each panel), with portraits of the Federico da Montefeltro and Battista Sforza. It is the work of Piero della Francesca dated to about 1465 to 1472 and in the collection of the Uffizi Gallery in Florence. It is one of the most famous works of the Italian Renaissance.",
            "Piero,_Double_portrait_of_the_Dukes_of_Urbino",
            "1465-1472",
            "Sala 2")
        
        let artWork11: Artwork = Artwork(
            "The Baptism of Christ",
            "Andrea del Verrocchio & Leonardo da Vinci",
            "The Baptism of Christ is a painting finished around 1475 in the studio of the Italian Renaissance painter Andrea del Verrocchio and generally ascribed to him and his pupil Leonardo da Vinci. Some art historians discern the hands of other members of Verrocchio's workshop in the painting as well. The picture depicts the Baptism of Jesus by John the Baptist as recorded in the Biblical Gospels of Matthew, Mark and Luke. The angel to the left is recorded as having been painted by the youthful Leonardo, a fact which has excited so much special comment and mythology, that the importance and value of the picture as a whole and within the œuvre of Verrocchio is often overlooked. Modern critics also attribute much of the landscape in the background and the figure of Christ to Leonardo da Vinci as well. The painting is housed in the Uffizi Gallery in Florence.",
            "Andrea_del_Verrocchio,_Leonardo_da_Vinci_-_Baptism_of_Christ",
            "1475-1478",
            "Sala 2")
        
        let artWork12: Artwork = Artwork(
            "Holy Allegory",
            "Giovanni Bellini",
            "The Holy Allegory is a painting by the Italian Renaissance master Giovanni Bellini, dating from c. 1490 to 1500.\n\nDescription\nThe scene is set on a wide terrace with a polychrome marble pavement, in perspective, separated from a lake shore by a parapet. On the left Mary is enthroned, under a baldachin whose support is in cornucopia shape, a symbol of her fertility. The baldachin has four steps, and on its side is a frieze with scenes of the myth of Marsyas, interpreted as a parallel with Jesus' Passion. Near to Mary are two unidentified female figures, which could represent two saints or two virtues. One of them looks to be floating in the air, although the effect could stem from a loss of color near her legs and feet.\nIn the middle of the scene are four children playing with a small tree and its silver fruits, perhaps a symbol of the knowledge tree, a symbol of life and wisdom. On the right are Job and St. Sebastian. Outside the parapet, are St. Joseph (or St. Peter) and St. Paul, the latter with his attribute of a sword. He is advancing to the left, where a man with a turban perhaps symbolizes an infidel.\nIn the background, beyond a large lake, is a landscape with rocky spurs with men and animals. On the shores are a shepherd in a grotto, and a centaur.\n\nInterpretation\nThe exact meaning of the painting had not been yet completely understood, although several hypotheses have been made by art historians.\nThe most acclaimed interpretation is that of Ludwig. According to him, the painting represents the ideal path of purification of the soul. The hermit shepherd would be St. Anthony the Abbot, descending from his hermitage in the spiritual path inspired to the first hermit, St. Paul, and overcoming several obstacles including the centaur which waits for him at the end of the staircase. The terrace would represent the Paradise Garden, where the souls in Purgatory, symbolized by the children, wait before they are admitted to heaven. Mary, advocate of the men before God, judges the souls with the help of the crowned Justice coronata. Amongst the children, who are playing with the mystic fruits, the one at the tree would be a soul called to the eternal beatitude. The two saints standing on the left would be the patrons, perhaps connected to the works' commissioners, while the two behind the parapet would be Peter and Paul, who guard the gate of Paradise. The river in the background would be Lethe, which surrounds Paradise. The animals would represent the hermits' virtue: the mule for the patience, and the sheep for humility.",
            "Giovanni_Bellini_-_Allegoria_sacra",
            "1490-1500",
            "Sala 2")
        
        let artWork13: Artwork = Artwork(
            "Perseus Freeing Andromeda",
            "Piero di Cosimo",
            "Perseus Freeing Andromeda is a painting by the Italian Renaissance painter Piero di Cosimo, c. executed in 1510 or 1513. It is housed in the Uffizi Gallery of Florence, Italy.\nIt was commissioned by Filippo Strozzi the Elder, and gifted by Giovanni Battista Strozzi to a member of Cosimo de' Medici's personnel.\nThe work shows the mythological hero Perseus killing the monster who had entrapped Andromeda. Piero gave a great deal of attention to the background, perhaps inspired to the contemporary Flemish school: details include the two characters with a turban on the left, the very detailed painting of the water on the shore, and the fantastic musical instruments.",
            "Piero_di_Cosimo_-_Liberazione_di_Andromeda",
            "1510-1513",
            "Sala 2")
        
        let artWork14: Artwork = Artwork(
            "Adoration of the Magi",
            "Andrea Mantegna",
            "The Adoration of the Magi is a painting by the Italian Renaissance painter Andrea Mantegna, from 1462.\nTogether with The Ascension and The Circumcision, it forms a triptych created in 1827 at the Uffizi, where the picture can still be seen. The three works were acquired by the Medici in 1588 by the Gonzaga, whose member Ludovico had commissioned them to Mantegna in the 1460s for the Chapel of the Castle of St. George in Mantua (together with the Death of the Virgin, now in the Museo del Prado).\nThe panel with the Adoration of the Magi was probably located in the chapel's apse. The Magi are depicted while descending to the Child's grotto from a path carved out in the rock. The Virgin is portrayed with a crown of angels, according to a Byzantine model.\nAnother version of the painting sold for the then record price of $10.5 million in 1985.",
            "Andrea_Mantegna_-_Trittico",
            "1462",
            "Sala 2")
        
        let artWork15: Artwork = Artwork(
            "Madonna with the Long Neck",
            "Parmigianino",
            "The Madonna with the Long Neck, also known as Madonna and Child with Angels and St. Jerome, is an Italian Mannerist oil painting by the painter Parmigianino, dating from c. 1535-1540 and depicting Madonna and Child with angels. The painting was begun in 1534 for the funerary chapel of Francesco Tagliaferri in Parma, but remained incomplete on Parmigianino's death in 1540. Ferdinando de' Medici, Grand Prince of Tuscany purchased it in 1698 and it has been on display at the Uffizi since 1948.\n\nDescription\nThe painting depicts the Virgin Mary seated on a high pedestal in luxurious robes, holding a rather large baby Jesus on her lap. Six angels crowded together on the Madonna's right, adore the Christ-child.\nIn the lower right-hand corner of the painting is an enigmatic scene, with a row of marble columns and the emaciated figure of St. Jerome.\nThe painting is popularly called \"Madonna of the Long Neck\" because the painter, in his eagerness to make the Holy Virgin look graceful and elegant, has given her a neck like that of a swan.\nParmigianino has distorted nature for his own artistic purposes, creating a typical Mannerist figura serpentinata. Jesus is also extremely large for a baby and he lies precariously on Mary's lap as if about to fall at any moment. The Madonna herself is of hardly human proportions—she is almost twice the size of the angels to her right. Her right foot rests on cushions that appear to be only a few inches away from the picture plane, but the foot itself seems to project beyond it, and is thus on our side of the canvas, breaking the conventions of a framed picture.\nFollowing a recent restoration of the painting, the unfinished face of an angel just below the Madonna's right elbow can be seen more clearly. Also the angel in the middle of the bottom row now looks at the vase held by the angel on his right, in which can be seen the faint image of a cross. Before the restoration this angel looked down at the Christ child.",
            "Parmigianino_-_Madonna_dal_collo_lungo",
            "1535-1540",
            "Sala 2")
        
        let artWork16: Artwork = Artwork(
            "Flora",
            "Titian",
            "Flora is an oil painting by Italian late Renaissance painter Titian, dated to around 1515 and now held at the Uffizi Gallery in Florence.\nIt portrays an idealized beautiful woman, a model established in the Venetian school by Titian's master Giorgione with his Laura. Her left hands holds a pink-shaded mantle, while another holds a handful of flowers and leaves.\nThe woman was portrayed by Titian in numerous other works of the period, including the Woman at the Mirror, the Vanity, Salome and Violante, as well as some Holy Conversations. The meaning of the painting is disputed: some, basing for example to inscriptions added to the 16th century reproductions, identifies the woman as a courtesan; other consider it a symbol of nuptial love, although her dress is not a dressing one. The identification with Flora, the ancient goddess of Spring and vegetation, derives from the presence of Spring flowers in her hands.",
            "Tiziano_-_Flora",
            "1515",
            "Sala 2")
        
        let artWork17: Artwork = Artwork(
            "Doni Tondo",
            "Michelangelo",
            "The Doni Tondo or Doni Madonna, sometimes called The Holy Family, is the only finished panel painting by the mature Michelangelo to survive. Now in the Uffizi in Florence, Italy, and still in its original frame, the painting was probably commissioned by Agnolo Doni to commemorate his marriage to Maddalena Strozzi, the daughter of a powerful Tuscan family. The painting is in the form of a tondo, or round frame, which is frequently associated during the Renaissance with domestic ideas.\nThe Doni Tondo features the Christian Holy family (the child Jesus, Mary, and Saint Joseph) along with John the Baptist in the foreground and contains five ambiguous nude male figures in the background.\n\nDescription\nThe Virgin Mary is the most prominent figure in the composition, taking up much of the center of the image. Mary sits directly on the ground without a cushion between herself and the ground, to better communicate the theme of her relationship to the earth. The grass directly below the figure is green, which sharply contrasts to the grassless ground surrounding her. Saint Joseph has a higher position in the image compared to Mary, perhaps as the head of the family, although this is an unusual feature in compositions of the Holy Family. Mary is located between his legs, as if he is protecting her. Saint John the Baptist, the patron saint of Florence, is very commonly included in Florentine works depicting the Madonna and Child. He is in the middle-ground of the painting, between the Holy Family and the background. The elements around the family include plants and perhaps water.\nThe painting is still in its original frame, one that Michelangelo might have influenced or helped design. The frame is ornately carved and rather unusual for the five heads it contains which protrude three-dimensionally into space. The frame also contains carvings of crescent moons, stars, vegetation, and lions’ heads. These symbols are, perhaps, references to the Doni and Strozzi families, taken from each one’s coat of arms.\nThere is a horizontal band separating the foreground and background, whose function is to separate the Holy Family from the background figures and St. John the Baptist. The background figures are five nudes, whose meaning and function are subject to much speculation and debate. The Holy Family is much larger in size than the nudes in the background, and there appears to be water in between the land where the Holy Family and the nudes are situated. The Holy Family all gaze at Christ, but none of the nudes look directly at him. The far background contains a landscape.",
            "Michelangelo_Buonarroti_046",
            "1506-1507",
            "Sala 3")
        
        let artWork18: Artwork = Artwork(
            "Portrait of Leo X",
            "Raphael",
            "The Portrait of Pope Leo X with two Cardinals is a painting by the Italian High Renaissance master Raphael, c. 1517. It is housed in the Uffizi Gallery of Florence.\nIn contrast to works depicting classical, idealised Madonnas and figures from antiquity, this portrait shows the sitter in a realistic manner. The Pope is depicted with the weight of late middle age, while his sight appears to be strained. The painting sets up a series of visual contradictions between appearance and reality, intended by Raphael to reflect the unrest of a period of turmoil for the papacy. Martin Luther had recently challenged papal authority,listing among other grievances, Leo X's method of selling indulgences to fund work on St Peter's.\nThe pommel on top of the Pope's chair evokes the symbolic abacus balls of the Medici family, while the illuminated Bible open on the table has been identified as the Hamilton Bible.\nThe cardinals are usually identified as Giulio di Giuliano de' Medici and Luigi de' Rossi.",
            "Raffaello_Sanzio_-_Ritratto_di_Leone_X",
            "1517",
            "Sala 3")
        
        let artWork19: Artwork = Artwork(
            "The Judgement of Solomon",
            "Giorgione",
            "The Judgment of Solomon is a painting by the Italian Renaissance master Giorgione (1500–1501). It is housed in the Galleria degli Uffizi of Florence.\nThe work is dimensionally and thematically similar to its Pendant painting Test of Fire of Moses, also in the Uffizi. It shows Solomon, King of the Jews, on the throne, with the court dignitaries and two women at his feet. The two women were both claiming the same child and had appealed to the King. Solomon's choice unmasked the faking one. Behind them are two large oaks which divide the landscape into two parts.\nA Ferrarese assistant collaborated with Giorgione in the realization of the figures.",
            "Giorgione,_giudizio_di_salomone",
            "1500-1501",
            "Sala 3")
        
        let artWork20: Artwork = Artwork(
            "The Battle of San Romano",
            "Paolo Uccello",
            "The Battle of San Romano is a set of three paintings by the Florentine painter Paolo Uccello depicting events that took place at the Battle of San Romano between Florentine and Sienese forces in 1432. The paintings are in egg tempera on wooden panels, each over 3 metres long. The paintings were much admired in the 15th century; Lorenzo de' Medici so coveted them that he purchased one and had the remaining two forcibly removed to the Palazzo Medici. They are now divided between three collections, the National Gallery, the Galleria degli Uffizi, Florence, and the Musée du Louvre, Paris.\n\nSubject\nThe Uffizi panel was probably designed to be the central painting of the triptych and is the only one signed by the artist. The sequence most widely agreed among art historians is: London, Uffizi, Louvre, although others have been proposed. They may represent different times of day: dawn (London), mid-day (Florence) and dusk (Paris) – the battle lasted eight hours.\nIn the London painting, Niccolò da Tolentino, with his large gold and red patterned hat, is seen leading the Florentine cavalry. He had a reputation for recklessness, and doesn't even wear a helmet, though he sent two messengers to tell his allied army of Attendolo to hurry to his aid as he is facing a superior force. In the foreground, broken lances and a dead soldier are carefully aligned into orthogonals, so as to create an impression of perspective. Similar to that of a tapestry, the landscape rises up in a picture plane as opposed to receding deeply into space. This illusion of a backdrop and a perspective theme resembling a stage, depicts the war as a theatrical ceremony. The three paintings were designed to be hung high on three different walls of a room, and the perspective designed with that height in mind, which accounts for many apparent anomalies in the perspective when seen in photos or at normal gallery height.",
            "Uccello_Battle_of_San_Romano_Uffizi",
            "1438",
            "Sala 3")
        
        let artWork21: Artwork = Artwork(
            "The Test of Fire of Moses",
            "Giorgione",
            "The Test of Fire of Moses is a painting by the Italian Renaissance master Giorgione (1500-1501). It is housed in the Galleria degli Uffizi of Florence.\nThe work is dimensionally and thematically similar to the its Pendant painting Judgement of Salomon, also in the Uffizi, and is dated to the years immediately after Giorgione's moving to Venice.\nThe episode is taken from the Talmud, and was probably commissioned[1] by an acculturated person who was not entirely following to the official Roman Catholic positions.\nThe horizontal setting is similar to that in Giovanni Bellini's Holy Allegory, also in the Uffizi, and allows the painter to give importance to the landscape. In the latter's care for detail are evident influences from Northern Europe painting.",
            "Giorgione,_Moses_Undergoing_Trial_by_Fire",
            "1502-1505",
        "Sala 3")
        
        let artWork22: Artwork = Artwork(
            "Sacrifice of Isaac",
            "Caravaggio",
            "The Sacrifice of Isaac is the title of two paintings from c. 1598 - 1603 depicting the sacrifice of Isaac. The two paintings are housed in the Piasecka-Johnson Collection in Princeton, New Jersey, and in the Uffizi Gallery, Florence. The paintings could be painted by the Italian master Caravaggio (1571–1610) but there is also strong evidence that they may have been the work of Bartolomeo Cavarozzi, a talented early member of the Caravaggio following who is known to have been in Spain about 1617-1619.\nAccording to the early biographer Giovanni Bellori, Caravaggio painted the version of the Sacrifice of Isaac housed in the Uffizi Gallery for Cardinal Maffeo Barberini, the future Pope Urban VIII, and a series of payments totalling one hundred scudi were made to the artist by Barberini between May 1603 and January 1604. Caravaggio had previously painted a Portrait of Maffeo Barberini, which presumably pleased the cardinal enough for him to commission this second painting.\nIsaac has been identified as Cecco Boneri, who appeared as Caravaggio's model in several other pictures. Recent X-ray analysis showed that Caravaggio used Cecco also for the angel, and later modified the profile and the hair to hide the resemblance.",
            "Sacrifice_of_Isaac-Caravaggio_(Uffizi)",
            "1598-1603", "Sale 3")
        
        let artWork23: Artwork = Artwork(
            "Medusa",
            "Caravaggio",
            "Caravaggio painted two versions of Medusa, the first in 1596 and the other presumably in 1597.\nThe first version is also known as Murtula, by the name of the poet who wrote about it, Gaspare Murtola (d. 1624): \"Flee, for if your eyes are petrified in amazement, she will turn you to stone.\" It measures 48 by 55 cm and is signed Michel A F (Latin: Michel Angelo Fecit), \"Michel Angelo made [this]\", Michelangelo being Caravaggio's first name. This work is privately owned.\nThe second version, shown here, is slightly bigger (60×55 cm) and is not signed; it is held in the Uffizi Gallery in Florence.",
            "Medusa_by_Caravaggio",
            "1597",
            "Sala 3")
        
        let artWork24: Artwork = Artwork(
            "Correggio",
            "Rest on Flight to Egypt",
            "The Rest on the Flight to Egypt with Saint Francis is a painting by the Italian Renaissance master Correggio, dated to c. 1520 and now in the Uffizi Gallery of Florence.\n\nHistory\nThe painting, once attributed to Federico Barocci, is now unanimously assigned to Correggio. It has been linked to the testament of jurist Francesco Munari who, in 1520, left money to the church of San Francesco in the town of Correggio for the decoration of the Immaculate Conception Chapel, where he wanted to be buried.\nThe work remained in the church until 1638, when duke Francesco I d'Este moved his collections to Modena and replaced it with a copy by Jean Boulanger. In 1649 it was acquired by Ferdinando II de' Medici, in exchange for the Sacrifice of Isaac by Andrea del Sarto, and was thenceforth located at the Uffizi.\n\nDescription\nThe painting is inspired to an episode of Jesus' childhood narrated in the Gospel of Pseudo-Matthew. During their flight from Egypt, the Holy Family stopped to rest under a palm tree. The latter bent itself to offer them its fruit and water appeared from its roots. Mary is portrayed in the middle, with the child on her knees. Joseph, on the left, is giving fruits to Jesus. On the right is Saint Francis of Assisi, present in the scene as a homage to the donor (who was eponymous of the saint), or the church.",
            "Correggio_Rest",
            "1520",
            "Sala 4")
        
        let artWork25: Artwork = Artwork(
            "Rogier van der Weyden",
            "Lamentation of Christ",
            "",
            "Rogier_van_der_Weyden_013.1",
            "1460-1463",
            "Sala 4")
        
        let artWork26: Artwork = Artwork(
            "Adoration of the Magi",
            "Albrecht Dürer",
            "",
            "Albrecht_Dürer_-_L'Adoration_des_mages",
            "1504",
            "Sala 4")
        
        let artWork27: Artwork = Artwork(
            "Madonna and Angels",
            "Hans Memling",
            "",
            "Hans_Memling_061",
            "1480",
            "Sala 4")
        
        let artWork28: Artwork = Artwork(
            "Portrait of María Teresa",
            "Francisco Goya",
            "",
            "Francisco_de_Goya_y_Lucientes_-_Portrait_of_María_Teresa_de_Vallabriga_on_Horseback",
            "1783",
            "Sala 4")
        
        let artWork29: Artwork = Artwork(
            "Triumph of Henry IV in Paris",
            "Pieter Paul Rubens",
            "",
            "Pieter_Paul_Rubens_-_Ingresso_trionfale_di_Enrico_IV_a_Parigi",
            "1627-1630",
            "Sala 4")
        
        let artWork30: Artwork = Artwork(
            "Self Portrait",
            "Diego Velázquez",
            "",
            "Self-portrait_by_Diego_Velázquez",
            "1645",
            "Sala 4")
        
        let artWork31: Artwork = Artwork(
            "Portrait of Eleanor of Toledo",
            "Agnolo Bronzino",
            "",
            "Bronzino_-_Eleonora_di_Toledo_col_figlio_Giovanni",
            "1544-1545",
            "Sala 4")
        
        let artWork32: Artwork = Artwork(
            "Portrait of an Old Man",
            "Rembrandt",
            "",
            "Portrait_of_an_Old_Man,_Rembrandt",
            "1660",
            "Sala 5")
        
        let artWork33: Artwork = Artwork(
            "Self-Portrait",
            "Rembrandt",
            "",
            "Rembrandt,_Self-portrait,_1668–1669,_Galleria_degli_Uffizi,_Florence",
            "1668",
            "Sala 5")
        
        let artWork34: Artwork = Artwork(
            "Portinari Triptych",
            "Hugo van der Goes",
            "",
            "Hugo_van_der_Goes_004",
            "1476",
            "Sala 5")
        
        let artWork35: Artwork = Artwork(
            "Martyrdom of St Florian",
            "Albrecht Altdorfer",
            "",
            "Albrecht_altdorfer,_Martyrdom_of_St_Florian",
            "1516-1520",
            "Sala 5")
        
        let artWork36: Artwork = Artwork(
            "Portrait of Charles V",
            "Anthony van Dyck",
            "",
            "Anthony_Van_Dick_-_Ritratto_equestre_dell'imperatore_Carlo_V",
            "1620",
            "Sala 5")
        
        let artWork37: Artwork = Artwork(
            "Martyrdom of Saint Justina",
            "Paolo Veronese",
            "",
            "Paolo_Veronese_-_Martirio_di_Santa_Giustina",
            "1570-1575",
            "Sala 5")
        
        let artWork38: Artwork = Artwork(
            "St. John and St. Francis",
            "El Greco",
            "",
            "El_Greco_-_Sts_John_and_Francis",
            "1600",
            "Sala 5")
        
        let artWork39: Artwork = Artwork(
            "Annunciation",
            "Simone Martini",
            "",
            "Simone_Martini_-_The_Annunciation_and_Two_Saints",
            "1333",
            "Sala 5")
        
        let artWork40: Artwork = Artwork(
            "Ognissanti Madonna",
            "Giotto di Bondone",
            "",
            "GiottoMadonna",
            "1310",
            "Sala 6")
        
        let artWork41: Artwork = Artwork(
            "Adoration of the Magi",
            "Gentile da Fabriano",
            "",
            "Gentile_da_Fabriano_001",
            "1423",
            "Sala 6")
        
        let artWork42: Artwork = Artwork(
            "Coronation of the Virgin",
            "Fra Angelico",
            "",
            "Fra_Angelico_-_The_Coronation_of_the_Virgin",
            "1434-1435",
            "Sala 6")
        
        let artWork43: Artwork = Artwork(
            "The Madonna and St. Anna",
            "Masaccio",
            "",
            "Masaccio-_The_Madonna_and_Child_with_st._Anna",
            "1424",
            "Sala 6")
        
        let artWork44: Artwork = Artwork(
            "Adoration of the Magi",
            "Lorenzo Monaco",
            "",
            "Don_Lorenzo_Monaco_002.2",
            "1422",
            "Sala 6")
            
        artWorks.append(artWork1)
        artWorks.append(artWork2)
        artWorks.append(artWork3)
        artWorks.append(artWork4)
        artWorks.append(artWork5)
        artWorks.append(artWork6)
        artWorks.append(artWork7)
        artWorks.append(artWork8)
        artWorks.append(artWork9)
        artWorks.append(artWork10)
        artWorks.append(artWork11)
        artWorks.append(artWork12)
        artWorks.append(artWork13)
        artWorks.append(artWork14)
        artWorks.append(artWork15)
        artWorks.append(artWork16)
        artWorks.append(artWork17)
        artWorks.append(artWork18)
        artWorks.append(artWork19)
        artWorks.append(artWork20)
        artWorks.append(artWork21)
        artWorks.append(artWork22)
        artWorks.append(artWork23)
        artWorks.append(artWork24)
        artWorks.append(artWork25)
        artWorks.append(artWork26)
        artWorks.append(artWork27)
        artWorks.append(artWork28)
        artWorks.append(artWork29)
        artWorks.append(artWork30)
        artWorks.append(artWork31)
        artWorks.append(artWork32)
        artWorks.append(artWork33)
        artWorks.append(artWork34)
        artWorks.append(artWork35)
        artWorks.append(artWork36)
        artWorks.append(artWork37)
        artWorks.append(artWork38)
        artWorks.append(artWork39)
        artWorks.append(artWork40)
        artWorks.append(artWork41)
        artWorks.append(artWork42)
        artWorks.append(artWork43)
        artWorks.append(artWork44)
    }
}
